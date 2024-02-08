import java.io.FileNotFoundException;
import java.io.UnsupportedEncodingException;
import java.util.AbstractMap.SimpleEntry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import java.io.PrintWriter;
import java.util.Random;

import ast.BinOp;
import ast.Expr;
import ast.Expr.Op;
import ast.Real;
import ast.Symbol;
import ast.Var;
import org.apache.commons.cli.*;

public class Synthesizer {
  private static final String[] ANGLES = {"theta1", "theta2", "theta3"};
//  private static final Expr[] symbAngles = {
//    new Symbol("theta1"), // nam, rigetti
//    new Symbol("theta2"), // nam, rigetti
////          new BinOp(Op.SUBTRACT, new BinOp(Op.MULT, new Real(4), new Symbol("pi")), new Symbol("theta1")),
////          new BinOp(Op.SUBTRACT, new BinOp(Op.MULT, new Real(4), new Symbol("pi")), new BinOp(Op.PLUS, new Symbol("theta1"), new Symbol("theta2"))),
////    new Symbol("theta3"), // ibm,
//    new BinOp(Op.PLUS, new Symbol("theta1"), new Symbol("theta2")), // nam, rigetti, ibm
////          new Symbol("pi"),
////          new BinOp(Op.DIV, new Symbol("pi"), new Real(2)),
////          new BinOp(Op.MULT, new Real(7), new BinOp(Op.DIV, new Symbol("pi"), new Real(2))),
////          new BinOp(Op.MULT, new Real(3), new Symbol("pi")),
////          new BinOp(Op.PLUS, new Symbol("theta1"), new BinOp(Op.PLUS, new Symbol("theta2"), new Symbol("theta3"))), // ibm
//  };
  private static final int MAX_QUBITS_SYMB = 2;

  private Verifier verifier;
  private String[] gates;
  
  private Expr[] symbAngles;
  private int maxQubits;
  private Random rand;

  private Map<Integer, List<ConstrainedCircuit>> map;
  private List<EquivalenceClass> ecs;

  public Synthesizer(String[] gates, int maxQubits, Random rand, Expr[] symbAngles) {
    this.verifier = new Verifier(rand, maxQubits);
    this.gates = gates;
    this.symbAngles = symbAngles;
    this.maxQubits = maxQubits;
    this.rand = rand;
    this.map = new HashMap<>();
    this.ecs = new ArrayList<>();
  }

  public void enumerate(int numQubits, int size) {
    Map<String, Double> symbolMap = getSymbolMap();

    // initialize map and reps with empty circuit
    Circuit emptyCircuit = getStart();
    List<SimpleEntry<Integer, List<Integer>>> emptyCircuitHash = verifier.hashCode(emptyCircuit, symbolMap);
    assert emptyCircuitHash.size() == 1;

    SimpleEntry<Integer, List<Integer>> emptyCircuitHashEntry = emptyCircuitHash.get(0);
    ArrayList<ConstrainedCircuit> equiv = new ArrayList<>();
    ConstrainedCircuit emptyCCircuit = new ConstrainedCircuit(emptyCircuit, emptyCircuitHashEntry.getValue());
    equiv.add(emptyCCircuit);
    map.put(emptyCircuitHashEntry.getKey(), equiv);
    Map<String, ConstrainedCircuit> previousReps = new HashMap<>();
    previousReps.put(emptyCircuit.getQasmString(), new ConstrainedCircuit(emptyCircuit, new ArrayList<>()));

    for (int i = 1; i <= size; i++) {
      // enumerate circuit size i
      if (i == 1) {
        Circuit start = getStart();
        for (String gate : this.gates) {
          for (int q = 0; q < numQubits; q++) {
            List<Circuit> circuitsAfterApply = applyGate(start, gate, q, 2);
            for (Circuit c : circuitsAfterApply) {
              updateMap(c, symbolMap);
            }
          }
        }
      } else {
        for (ConstrainedCircuit c : previousReps.values()) {
          // apply symb
          if (!c.getCircuit().hasQubitGreaterThan(MAX_QUBITS_SYMB) && !c.getCircuit().hasCXH()) {
            List<Circuit> circuitsAfterApplySymb = applyGate(c.getCircuit(), "symb", 0, MAX_QUBITS_SYMB);
            for (Circuit cSymb : circuitsAfterApplySymb) {
              if (previousReps.containsKey(cSymb.getQasmStringDropFirst())) { // TODO
                updateMap(cSymb, symbolMap);
              }
            }
          }
          // apply other gates
          for (String gate : this.gates) {
            if ((gate.equals("cx") || gate.equals("cz")) && c.getCircuit().hasSymb()) { continue; }
            for (int q = 0; q <= Math.min(c.getCircuit().getQubits().size(), numQubits - 1); q++) {
              if (c.getCircuit().hasSymb() && q >= MAX_QUBITS_SYMB) { continue; }
              List<Circuit> circuitsAfterApply = applyGate(c.getCircuit(), gate, q, Math.min(c.getCircuit().getQubits().size() + 1, numQubits));
              for (Circuit caa : circuitsAfterApply) {
                if (previousReps.containsKey(caa.getQasmStringDropFirst())) { // TODO
                  updateMap(caa, symbolMap);
                }
              }
            }
          }
        }
      }

      // recompute ecs
      // simplified version compared to quartz
      ecs.clear();
      previousReps.clear();
      for (List<ConstrainedCircuit> possibleEC : map.values()) {
        // pick smallest
        ConstrainedCircuit smallest = pickSmallest(possibleEC);
        ecs.add(new EquivalenceClass(possibleEC, smallest));

        if (smallest.getCircuit().getSize() == i) {
          previousReps.putIfAbsent(smallest.getCircuit().getQasmString(), smallest);
        }
      }

      // add symb as first op so it can be added onto in future iteration but we don't want this in the hash table
      if (i == 1) {
        Circuit start = getStart();
        List<Circuit> circuitsAfterApplySymb = applyGate(start, "symb", 0, MAX_QUBITS_SYMB);
        previousReps.put(circuitsAfterApplySymb.get(0).getQasmString(), new ConstrainedCircuit(circuitsAfterApplySymb.get(0), new ArrayList<>()));
      }
    }
  }

  public void pruneECS() {
    List<EquivalenceClass> newECS = new ArrayList<>();
    for (EquivalenceClass ec : ecs) {
      if (ec.size() > 1) {
        newECS.add(ec);
      }
    }
    ecs = newECS;
  }

  private boolean hasCommonSubcircuit(Circuit c1, Circuit c2) {
    return c1.getSize() != 0 && c2.getSize() != 0 && (c1.getQasm().get(0).equals(c2.getQasm().get(0)) || c1.getQasm().get(c1.getSize() - 1).equals(c2.getQasm().get(c2.getSize() - 1)));
  }

  public void gatherRules(String filename, boolean useRational) throws FileNotFoundException, UnsupportedEncodingException {
    PrintWriter writer = new PrintWriter(String.format("%s.txt", filename), "UTF-8");
    PrintWriter writerSymb = new PrintWriter(String.format("%s_symb.txt", filename), "UTF-8");

    int makeCircuitSmaller = 0;
    int haveSymb = 0;
    int total = 0;
    HashMap<String, List<List<Integer>>> constraintMap = new HashMap<>();
    for (EquivalenceClass ec : ecs) {
      for (ConstrainedCircuit cc : ec.getCircuits()) {
        Circuit r = ec.getRepresentative().getCircuit();
        Circuit other = cc.getCircuit();
        String rule = ec.getRepresentative().getCircuit().getQasmString() + " | " + cc.getCircuit().getQasmString();

        if (!r.getQasmString().equals(other.getQasmString())) {
          if (!hasCommonSubcircuit(r, other)) {
            if (r.hasSymb() && other.hasSymb()) {
              if (cc.getConstraint().equals(ec.getRepresentative().getConstraint())) { // same constraint
                boolean equiv = useRational ? verifier.verifyRational(r, other, cc.getConstraint()) : verifier.verify(r, other, cc.getConstraint());
                if (equiv) {
                  if (constraintMap.containsKey(rule)) {
                    constraintMap.get(rule).add(cc.getConstraint());
                  } else {
                    total++;
                    haveSymb++;
                    if (r.getSize() < other.getSize()) {
                      makeCircuitSmaller++;
                    }
                    constraintMap.put(rule, new ArrayList<>(Arrays.asList(cc.getConstraint())));
                  }
                }
              }
            } else if (!r.hasSymb() && !other.hasSymb()) {
              boolean equiv = useRational ? verifier.verifyRational(r, other, new ArrayList<>()) : verifier.verify(r, other, new ArrayList<>());
              if (equiv) {
                total++;
                if (r.getSize() < other.getSize()) {
                  makeCircuitSmaller++;
                }
                writer.println(rule);
              }
            }
          }
        }
      }
    }

    for (String rule : constraintMap.keySet()) {
      writerSymb.println(rule + " | " + constraintStrings(constraintMap.get(rule)));
    }

    writer.close();
    writerSymb.close();

//    System.out.println(String.format("total: %s, make circuit smaller: %s, have symb: %s", total, makeCircuitSmaller, haveSymb));
  }

  private void updateMap(Circuit c, Map<String, Double> symbolMap) {
    List<SimpleEntry<Integer, List<Integer>>> hash = verifier.hashCode(c, symbolMap);
    for (SimpleEntry<Integer, List<Integer>> entry : hash) {
      ConstrainedCircuit cc = new ConstrainedCircuit(c, entry.getValue());
      if (map.containsKey(entry.getKey())) {
        map.get(entry.getKey()).add(cc);
      } else {
        map.put(entry.getKey(), new ArrayList<>(Arrays.asList(cc)));
      }
    }
  }

  private ConstrainedCircuit pickSmallest(List<ConstrainedCircuit> possibleEC) {
    ConstrainedCircuit smallest = null;
    int smallestSize = Integer.MAX_VALUE;
    for (ConstrainedCircuit cc : possibleEC) {
      if (cc.getCircuit().getSize() < smallestSize) {
        smallestSize = cc.getCircuit().getSize();
        smallest = cc;
      } else if (cc.getCircuit().getSize() == smallestSize) {
        if (smallest.getCircuit().getQasmString().compareTo(cc.getCircuit().getQasmString()) > 0) {
          smallest = cc;
        }
      }
    }
    return smallest;
  }

  private Map<String, Double> getSymbolMap() {
    HashMap<String, Double> symbolMap = new HashMap<>();
    symbolMap.put(PathSum.S_PHI, rand.nextDouble());
    for (String angle : ANGLES) {
      symbolMap.put(angle, rand.nextDouble());
    }

    return symbolMap;
  }

  private Circuit getStart() {
    ArrayList<String> qubits = new ArrayList<>();
    TreeMap<String, Expr> f = new TreeMap<>();

    for (int i = 0; i < maxQubits; i++) {
      String name = getName(i);
      qubits.add(name);
      f.put(name, new Var(name));
    }

    PathSum s = new PathSum(new Real(1), f);
    ArrayList<PathSum> pathSum = new ArrayList<>(Arrays.asList(s));

    return new Circuit(qubits, pathSum, new ArrayList<>());
  }

  private String getName(int qubit) {
    return String.format("q%s", qubit);
  }

  public void applyGate(Runnable r) {
    r.run();
  }
  interface Command {
    default void runOneQubit(Circuit c, String q){};
    default void runTwoQubit(Circuit c, String q1, String q2){};
    default void runOneQubitOneParam(Circuit c, String q, Expr angle){};
    default void runOneQubitTwoParam(Circuit c, String q, Expr angle1, Expr angle2){};
    default void runOneQubitThreeParam(Circuit c, String q, Expr angle1, Expr angle2, Expr angle3){};
    default void runSymb(Circuit circ, int numQubits){};
    default void runTwoQubitOneParam(Circuit c, String q1, String q2, Expr angle){};
    default void runTwoQubitTwoParam(Circuit c, String q1, String q2, Expr angle1, Expr angle2){};
  }

  private boolean containsAngle(Circuit c, Expr angle) {
    return c.getQasmString().contains("("+angle+")") ||
            c.getQasmString().contains("("+angle+",") ||
            c.getQasmString().contains(","+angle+",") ||
            c.getQasmString().contains(","+angle+")");
  }

  private List<Circuit> applyGate(Circuit c, String gate, int qubit, int numQubits) {
    String name = getName(qubit);
    ArrayList<Circuit> circuitsAfterApply = new ArrayList<>();

    Map<String, Command> map = new HashMap<>();
    map.put("x", new Command() {
      @Override
      public void runOneQubit(Circuit circ, String q) { PathSum.x(circ, q); };
    });
    map.put("h", new Command() {
      @Override
      public void runOneQubit(Circuit circ, String q) { PathSum.h(circ, q); };
    });
    map.put("rz", new Command() {
      @Override
      public void runOneQubitOneParam(Circuit circ, String q, Expr angle) { PathSum.rz(circ, q, angle); };
    });
    map.put("cx", new Command() {
      @Override
      public void runTwoQubit(Circuit circ, String q1, String q2) { PathSum.cx(circ, q1, q2); };
    });
    map.put("symb", new Command() {
      @Override
      public void runSymb(Circuit circ, int numQubits) { PathSum.symb(circ, numQubits); };
    });
    map.put("u1", new Command() {
      @Override
      public void runOneQubitOneParam(Circuit circ, String q, Expr angle) { PathSum.u1(circ, q, angle); };
    });
    map.put("u2", new Command() {
      @Override
      public void runOneQubitTwoParam(Circuit circ, String q, Expr angle1, Expr angle2) { PathSum.u2(circ, q, angle1, angle2); };
    });
    map.put("u3", new Command() {
      @Override
      public void runOneQubitThreeParam(Circuit circ, String q, Expr angle1, Expr angle2, Expr angle3) { PathSum.u3(circ, q, angle1, angle2, angle3); };
    });
    map.put("cz", new Command() {
      @Override
      public void runTwoQubit(Circuit circ, String q1, String q2) { PathSum.cz(circ, q1, q2); };
    });
    map.put("rx", new Command() {
      @Override
      public void runOneQubitOneParam(Circuit circ, String q, Expr angle) { PathSum.rx(circ, q, angle); };
    });
    map.put("ry", new Command() {
      @Override
      public void runOneQubitOneParam(Circuit circ, String q, Expr angle) { PathSum.ry(circ, q, angle); };
    });
    map.put("rxx", new Command() {
      @Override
      public void runTwoQubitOneParam(Circuit circ, String q1, String q2, Expr angle) { PathSum.rxx(circ, q1, q2, angle); };
    });
    map.put("gpi", new Command() {
      @Override
      public void runOneQubitOneParam(Circuit circ, String q, Expr angle) { PathSum.gpi(circ, q, angle); };
    });
    map.put("gpi2", new Command() {
      @Override
      public void runOneQubitOneParam(Circuit circ, String q, Expr angle) { PathSum.gpi2(circ, q, angle); };
    });
    map.put("vz", new Command() {
      @Override
      public void runOneQubitOneParam(Circuit circ, String q, Expr angle) { PathSum.vz(circ, q, angle); };
    });
    map.put("ms", new Command() {
      @Override
      public void runTwoQubitTwoParam(Circuit circ, String q1, String q2, Expr angle1, Expr angle2) { PathSum.ms(circ, q1, q2, angle1, angle2); };
    });
    map.put("sx", new Command() {
      @Override
      public void runOneQubit(Circuit circ, String q1) { PathSum.sx(circ, q1); };
    });

    switch (gate) {
      case "x":
      case "sx":
      case "h": {
        Circuit deepCopy = copy(c);
        map.get(gate).runOneQubit(deepCopy, name);
        circuitsAfterApply.add(deepCopy);
        return circuitsAfterApply;
      }
      case "rz":
      case "rx":
      case "ry":
      case "u1":
      case "gpi":
      case "gpi2":
      case "vz": {
        for (Expr angle : symbAngles) {
          if (gate.equals("u1")) {
            if (containsAngle(c, angle)) {
              continue;
            }
          }
          Circuit deepCopy = copy(c);
          map.get(gate).runOneQubitOneParam(deepCopy, name, angle);
          circuitsAfterApply.add(deepCopy);
        }
        return circuitsAfterApply;
      }
      case "rx1": {
        Circuit deepCopy = copy(c);
        map.get("rx").runOneQubitOneParam(deepCopy, name, new BinOp(Op.DIV, new Symbol("pi"), new Real(2)));
        circuitsAfterApply.add(deepCopy);
        return circuitsAfterApply;
      }
      case "rx2": {
        Circuit deepCopy = copy(c);
        map.get("rx").runOneQubitOneParam(deepCopy, name, new BinOp(Op.DIV, new BinOp(Op.MULT, new Real(3), new Symbol("pi")), new Real(2)));
        circuitsAfterApply.add(deepCopy);
        return circuitsAfterApply;
      }
      case "rx3": {
        Circuit deepCopy = copy(c);
        map.get("rx").runOneQubitOneParam(deepCopy, name, new Symbol("pi"));
        circuitsAfterApply.add(deepCopy);
        return circuitsAfterApply;
      }
      case "u2": {
        for (Expr angle : symbAngles) {
          if (containsAngle(c, angle)) {
            continue;
          }
          for (Expr angle2 : symbAngles) {
            if (containsAngle(c, angle2) || angle.toString().equals(angle2.toString())) {
              continue;
            }
            Circuit deepCopy = copy(c);
            map.get(gate).runOneQubitTwoParam(deepCopy, name, angle, angle2);
            circuitsAfterApply.add(deepCopy);
          }
        }
        return circuitsAfterApply;
      }
      case "u3": {
        for (Expr angle : symbAngles) {
          if (containsAngle(c, angle)) {
            continue;
          }
          for (Expr angle2 : symbAngles) {
            if (containsAngle(c, angle2) || angle.toString().equals(angle2.toString())) {
              continue;
            }
            for (Expr angle3 : symbAngles) {
              if (containsAngle(c, angle3) || angle.toString().equals(angle3.toString()) || angle3.toString().equals(angle2.toString())) {
                continue;
              }
              Circuit deepCopy = copy(c);
              map.get(gate).runOneQubitThreeParam(deepCopy, name, angle, angle2, angle3);
              circuitsAfterApply.add(deepCopy);
            }
          }
        }
        return circuitsAfterApply;
      }
      case "cx":
      case "cz": {
        for (int i = 0; i < numQubits; i++) {
          if (c.hasSymb()) {
            if (i >= MAX_QUBITS_SYMB) { continue; }
          }
          Circuit deepCopy = copy(c);
          String targetName = getName(i);

          if (qubit != i) {
            map.get(gate).runTwoQubit(deepCopy, name, targetName);
            circuitsAfterApply.add(deepCopy);
          }
        }
        return circuitsAfterApply;
      }
      case "rxx": {
        for (int i = 0; i < numQubits; i++) {
          if (c.hasSymb()) {
            if (i >= MAX_QUBITS_SYMB) { continue; }
          }
          String targetName = getName(i);

          if (qubit != i) {
            for (Expr angle : symbAngles) {
              if (containsAngle(c, angle)) {
                continue;
              }
              Circuit deepCopy = copy(c);
              map.get(gate).runTwoQubitOneParam(deepCopy, name, targetName, angle);
              circuitsAfterApply.add(deepCopy);
            }
          }
        }
        return circuitsAfterApply;
      }
      case "ms": {
        for (int i = 0; i < numQubits; i++) {
          if (c.hasSymb()) {
            if (i >= MAX_QUBITS_SYMB) { continue; }
          }
          String targetName = getName(i);

          if (qubit != i) {
            for (Expr angle : symbAngles) {
              if (containsAngle(c, angle)) {
                continue;
              }
              for (Expr angle2 : symbAngles) {
                if (containsAngle(c, angle2) || angle.toString().equals(angle2.toString())) {
                  continue;
                }
                Circuit deepCopy = copy(c);
                map.get(gate).runTwoQubitTwoParam(deepCopy, name, targetName, angle, angle2);
                circuitsAfterApply.add(deepCopy);
              }
            }
          }
        }
        return circuitsAfterApply;
      }
      case "symb": {
        if (!c.hasSymb()) {
          Circuit deepCopy = copy(c);
          map.get(gate).runSymb(deepCopy, numQubits);
          circuitsAfterApply.add(deepCopy);
        }
        return circuitsAfterApply;
      }
      default: throw new RuntimeException("unimplemented gate");
    }
  }

  private Circuit copy(Circuit c) {
    ArrayList<PathSum> copyPathSum = new ArrayList<>();
    for (PathSum s : c.getPathSum()) {
      TreeMap<String,Expr> copyF = new TreeMap<>();
      copyF.putAll(s.getF());
      PathSum copyS = new PathSum(s.getPhi(), copyF);
      copyPathSum.add(copyS);
    }
    Circuit copied = new Circuit(new ArrayList<>(c.getQubits()), copyPathSum, new ArrayList<>(c.getQasm()));
    copied.setUsedQubits(new ArrayList<>(c.getUsedQubits()));
    return copied;
  }

  private List<String> constraintStrings(List<List<Integer>> constraints) {
    ArrayList<String> strings = new ArrayList<>();
    for (List<Integer> perm : constraints) {
      int numQubits = getExponent(perm.size());
      boolean[][] terms = verifier.getTermsMap().get(numQubits);
      HashMap<String, String> constraint = new HashMap<>();
      for (int i = 0; i < terms.length; i++) {
        constraint.put(Arrays.toString(terms[i]),  Arrays.toString(terms[perm.get(i)]));
      }
      strings.add(constraint.toString());
    }

    return strings;
  }

  private int getExponent(int powerOfTwo) {
    int count = 0;
    while (powerOfTwo != 1) {
      powerOfTwo = powerOfTwo / 2;
      count++;
    }
    return count;
  }

  public static void main(String[] args) throws FileNotFoundException, UnsupportedEncodingException {
//    String[] gates = {"gpi", "gpi2", "vz", "ms"};
    Options options = new Options();
    
    Option gatesetO = new Option("g", "gateSet", true, "gate set (options: nam, ibm, ibm_new, rigetti, ion)");
    gatesetO.setRequired(true);
    options.addOption(gatesetO);

    Option maxQubitsO = new Option("q", "maxQubits", true, "max qubits");
    maxQubitsO.setRequired(true);
    options.addOption(maxQubitsO);

    Option maxSizeO = new Option("s", "maxSize", true, "max size (number of gates)");
    maxSizeO.setRequired(true);
    options.addOption(maxSizeO);

    Option rationalO = new Option("r", "useRational", false, "use rational verification (default does not)");
    rationalO.setRequired(false);
    options.addOption(rationalO);

    Options helpOption = new Options();
    Option helpO = new Option("h", "help", false, "print options");
    helpO.setRequired(false);
    helpOption.addOption(helpO);

    CommandLineParser parser = new DefaultParser();
    HelpFormatter formatter = new HelpFormatter();

    try {
      CommandLine cmd = parser.parse(helpOption, args);
      boolean help = cmd.hasOption(helpO);
      if (help) {
        formatter.printHelp("QUESO Synthesizer", options);
        return;
      }
    } catch (ParseException e) {
    }

    try {
      CommandLine cmd = parser.parse(options, args);
      String gateset = cmd.getOptionValue("gateSet");
      Integer maxQubits = Integer.parseInt(cmd.getOptionValue("maxQubits"));
      Integer maxSize = Integer.parseInt(cmd.getOptionValue("maxSize"));
      boolean useRational = cmd.hasOption("useRational");

      Random rand = new Random();
      Synthesizer enumerator = null;
      switch (gateset) {
        case "nam": {
          String[] gates = {"x", "h", "rz", "cx"};
          Expr[] symbAngles = {
                  new Symbol("theta1"),
                  new Symbol("theta2"),
                  new BinOp(Op.ADD, new Symbol("theta1"), new Symbol("theta2"))
          };
          enumerator = new Synthesizer(gates, maxQubits, rand, symbAngles);
          break;
        }
        case "ibm": {
          String[] gates = {"u1", "u2", "u3", "cx"};
          Expr[] symbAngles = {
                  new Symbol("theta1"),
                  new Symbol("theta2"),
                  new Symbol("theta3"),
                  new BinOp(Op.ADD, new Symbol("theta1"), new Symbol("theta2")),
                  new BinOp(Op.ADD, new Symbol("theta1"), new BinOp(Op.ADD, new Symbol("theta2"), new Symbol("theta3")))
          };
          enumerator = new Synthesizer(gates, maxQubits, rand, symbAngles);
          break;
        }
        case "ibm_new": {
          String[] gates = {"cx", "rz", "x", "sx"};
          Expr[] symbAngles = {
                  new Symbol("theta1"),
                  new Symbol("theta2"),
                  new BinOp(Op.ADD, new Symbol("theta1"), new Symbol("theta2"))
          };
          enumerator = new Synthesizer(gates, maxQubits, rand, symbAngles);
          break;
        }
        case "rigetti": {
          String[] gates = {"rx1", "rx2", "rx3", "rz", "cz"};
          Expr[] symbAngles = {
                  new Symbol("theta1"),
                  new Symbol("theta2"),
                  new BinOp(Op.ADD, new Symbol("theta1"), new Symbol("theta2")),
                  new BinOp(Op.SUBTRACT, new BinOp(Op.MULT, new Real(4), new Symbol("pi")), new Symbol("theta1"))
          };
          enumerator = new Synthesizer(gates, maxQubits, rand, symbAngles);
          break;
        }
        case "ion": {
          String[] gates = {"rx", "ry", "rz", "rxx"};
          Expr[] symbAngles = {
                  new Symbol("theta1"),
                  new Symbol("theta2"),
                  new BinOp(Op.ADD, new Symbol("theta1"), new Symbol("theta2")),
                  new BinOp(Op.SUBTRACT, new BinOp(Op.MULT, new Real(4), new Symbol("pi")), new Symbol("theta1")),
                  new Symbol("pi"),
                  new BinOp(Op.DIV, new Symbol("pi"), new Real(2))
          };
          enumerator = new Synthesizer(gates, maxQubits, rand, symbAngles);
          break;
        }
        default: throw new RuntimeException("unreachable");
      }

      long time1 = System.currentTimeMillis();
      enumerator.enumerate(maxQubits, maxSize);
      enumerator.pruneECS();
      long time2 = System.currentTimeMillis();
//      System.out.println("enumerate time (s): " + ((time2-time1)/1000));
      enumerator.gatherRules(String.format("rules_q%s_s%s_%s", maxQubits, maxSize, gateset), useRational);
      long time3 = System.currentTimeMillis();
      System.out.println(String.format("%s q%s s%s total time (s): %s", gateset, maxQubits, maxSize, ((time3-time1)/1000)));
    } catch (ParseException e) {
      System.out.println(e.getMessage());
      formatter.printHelp("QUESO Rule Synthesizer", options);

      System.exit(1);
    }
  }
}

