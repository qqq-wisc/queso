import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;
import java.util.AbstractMap.SimpleEntry;

import ast.*;
import org.apache.commons.math3.complex.Complex;

import ast.Expr.Op;
import org.apache.commons.math3.fraction.BigFraction;
import org.apache.commons.math3.random.RandomDataGenerator;
import org.apache.commons.math3.util.Pair;

public class Verifier {
  private static final int TOLERANCE = -8;

  private Random rand;
  private RandomDataGenerator randomDataGenerator;
  private Map<Integer, boolean[][]> termsMap; // not worth using bitset unless > 8 qubits
  private Map<Integer, List<List<Integer>>> permsMap;
  private int maxQubits;

  public Verifier(Random rand, int maxQubits) {
    this.rand = rand;
    this.randomDataGenerator = new RandomDataGenerator();
    this.termsMap = new HashMap<>();
    for (int i = 1; i <= maxQubits; i++) {
      termsMap.put(i, generateTerms(i));
    }
    if (maxQubits < 4) {
      this.permsMap = new HashMap<>();
      for (int i = 1; i <= maxQubits; i++) {
        int numTerms = 1 << i;
        List<List<Integer>> perms = new ArrayList<>();
        perm(numTerms, new ArrayList<>(), numTerms, perms);
        permsMap.put(numTerms, perms);
      }
    }
    this.maxQubits = maxQubits;
  }

  public List<List<Integer>> verify(Circuit c1, Circuit c2) {
    // c1 - c2
    Circuit cDiff = subtractCircuits(c1, c2);

    // enumerate qubits
    boolean[][] terms = termsMap.get(cDiff.getQubits().size());
    boolean[][] funTerms = cDiff.getUsedQubits().size() > 0 ? termsMap.get(cDiff.getUsedQubits().size()) : terms;
    List<Map<String, Integer>> qubitMaps = getQubitMaps(cDiff, terms);

    if (verifyHelper(cDiff, terms, qubitMaps, Collections.nCopies(terms.length, new HashMap<>()))) {
      return new ArrayList<>();
    }

    // enumerate functions
    List<List<Integer>> perms = permsMap.get(funTerms.length);
    ArrayList<List<Integer>> constraints = new ArrayList<>();

    for (List<Integer> perm : perms) {
      List<Map<String, Expr>> funMaps = getFunMaps(cDiff, funTerms, perm);
      if (verifyHelper(cDiff, terms, qubitMaps, funMaps)) {
        constraints.add(perm);
      }
    }
    if (!constraints.isEmpty()) {
      return constraints;
    }

    return null;
  }

  public boolean verify(Circuit c1, Circuit c2, List<Integer> perm) {
    // c1 - c2
    Circuit cDiff = subtractCircuits(c1, c2);

    // enumerate qubits
    boolean[][] terms = termsMap.get(cDiff.getQubits().size());
    boolean[][] funTerms = cDiff.getUsedQubits().size() > 0 ? termsMap.get(cDiff.getUsedQubits().size()) : terms;
    List<Map<String, Integer>> qubitMaps = getQubitMaps(cDiff, terms);
    List<Map<String, Expr>> funMaps = getFunMaps(cDiff, funTerms, perm);

    return verifyHelper(cDiff, terms, qubitMaps, funMaps);
  }

  public boolean verifyRational(Circuit c1, Circuit c2, List<Integer> perm) {
    boolean[][] terms = termsMap.get(c1.getQubits().size());
    boolean[][] funTerms = c1.getUsedQubits().size() > 0 ? termsMap.get(c1.getUsedQubits().size()) : terms;
    List<Map<String, Integer>> qubitMaps = getQubitMaps(c1, terms);
    List<Map<String, Expr>> funMaps = null;
    if (!perm.isEmpty()) {
      funMaps = getFunMaps(c1, funTerms, perm);
    }

    Expr e1 = ComplexRat.ZERO;
    Expr e2 = ComplexRat.ZERO;

    ArrayList<Expr> e1s = new ArrayList<>();
    ArrayList<Expr> e2s = new ArrayList<>();

    for (int i = 0; i < qubitMaps.size(); i++) {
//      e1s.add(simplifyCircuit(c1, qubitMaps.get(i), perm.isEmpty() ? new HashMap<>() : funMaps.get(i % funMaps.size())));
//      e2s.add(simplifyCircuit(c2, qubitMaps.get(i), perm.isEmpty() ? new HashMap<>() : funMaps.get(i % funMaps.size())));
      e1 = new BinOp(Op.ADD, e1, simplifyCircuit(c1, qubitMaps.get(i), perm.isEmpty() ? new HashMap<>() : funMaps.get(i % funMaps.size())));
      e2 = new BinOp(Op.ADD, e2, simplifyCircuit(c2, qubitMaps.get(i), perm.isEmpty() ? new HashMap<>() : funMaps.get(i % funMaps.size())));
    }

//    System.out.println(e1);
//    System.out.println(e2);
//
//    ArrayList<ComplexRat> v1s = new ArrayList<>();
//    ArrayList<ArrayList<ComplexRat>> mults1 = new ArrayList<>();
//    ComplexRat v1 = ComplexRat.ZERO;
//    Map<String, ComplexRat> samples = new HashMap<>();
//    for (Expr e1 : e1s) {
////      System.out.println(e1);
//      ArrayList<ComplexRat> multOtherSide1 =  new ArrayList<>();
//      v1s.add(evaluateExpr(e1, samples, multOtherSide1));
//      mults1.add(multOtherSide1);
//    }
////    System.out.println(v1s);
//
//    for (int i = 0; i < v1s.size(); i++) {
//      ComplexRat intermediate = v1s.get(i);
//      for (int j = 0; j < mults1.size(); j++) {
//        if (i != j) {
//          for (ComplexRat m : mults1.get(j)) {
//            intermediate = intermediate.multiply(m);
//          }
//        }
//      }
//      v1 = v1.add(intermediate);
//    }
//
//    ArrayList<ComplexRat> v2s = new ArrayList<>();
//    ArrayList<ArrayList<ComplexRat>> mults2 = new ArrayList<>();
//    ComplexRat v2 = ComplexRat.ZERO;
//    for (Expr e2 : e2s) {
//      System.out.println(e2);
//      ArrayList<ComplexRat> multOtherSide2 =  new ArrayList<>();
//      v2s.add(evaluateExpr(e2, samples, multOtherSide2));
//      mults2.add(multOtherSide2);
//    }
////    System.out.println(v2s);
//
////    System.out.println(mults1);
////    System.out.println(mults2);
//
//    for (int i = 0; i < v2s.size(); i++) {
//      ComplexRat intermediate = v2s.get(i);
//      for (int j = 0; j < mults2.size(); j++) {
//        if (i != j) {
//          for (ComplexRat m : mults2.get(j)) {
//            intermediate = intermediate.multiply(m);
//          }
//        }
//      }
//      v2 = v2.add(intermediate);
//    }
//
//    for (ArrayList<ComplexRat> mults : mults1) {
////      System.out.println(mults);
//      for (ComplexRat m : mults) {
//        v2 = v2.multiply(m);
//      }
//    }
//
//    for (ArrayList<ComplexRat> mults : mults2) {
//      System.out.println(mults);
//      for (ComplexRat m : mults) {
//        v1 = v1.multiply(m);
//      }
//    }

    e1 = simplifyExpr(e1, new HashMap<>(), new HashMap<>());
    e2 = simplifyExpr(e2, new HashMap<>(), new HashMap<>());

    Map<String, ComplexRat> samples = new HashMap<>();
    ArrayList<ComplexRat> multOtherSide1 =  new ArrayList<>();
    ComplexRat v1 = evaluateExpr(e1, samples, multOtherSide1);

    ArrayList<ComplexRat> multOtherSide2 =  new ArrayList<>();
    ComplexRat v2 = evaluateExpr(e2, samples, multOtherSide2);

//    System.out.println(v1);
//    System.out.println(v2);
//
//    System.out.println(samples);
//    v1 = v1.multiply(samples.get("EXPtheta1/2.0"));

    for (int i = 0; i < 7; i++){
      if (samples.containsKey("EXPtheta1/2.0")) {
        v1 = v1.multiply(samples.get("EXPtheta1/2.0"));
        v2 = v2.multiply(samples.get("EXPtheta1/2.0"));
      }
      if (samples.containsKey("EXPtheta2/2.0")) {
        v1 = v1.multiply(samples.get("EXPtheta2/2.0"));
        v2 = v2.multiply(samples.get("EXPtheta2/2.0"));
      }
    }


//    for (ComplexRat c : multOtherSide1) {
//      v2 = v2.multiply(c);
//    }
//
//    for (ComplexRat c : multOtherSide2) {
//      v1 = v1.multiply(c);
//    }


//    System.out.println(v1);
//    System.out.println(v2);

    return v1.equals(v2);
  }

  public boolean verify(Circuit c, Map<String, Integer> qubitMap, Map<String, Boolean> expectedMap) {
    if (c.getSize() == 0) {
      for (String q : qubitMap.keySet()) {
        if (!(qubitMap.get(q) == (expectedMap.get(q) ? 1 : 0))) {
          return false;
        }
      }
      return true;
    }

    for (String qubit : expectedMap.keySet()) {
      if (!c.getUsedQubits().contains(qubit)) {
        return false;
      }
    }

    List<String> qubitsNotInMap = new ArrayList<>();
    java.util.Collections.sort(c.getUsedQubits());
    for (String qubit : c.getUsedQubits()) {
      if (!qubitMap.containsKey(qubit)) {
        qubitsNotInMap.add(qubit);
      }
    }

    List<Map<String, Integer>> qubitMaps = new ArrayList<>();

    if (!qubitsNotInMap.isEmpty()) {
      boolean[][] terms = termsMap.get(qubitsNotInMap.size());
      for (boolean[] qubitMapping : terms) {
        Map<String, Integer> map = new HashMap<>();
        map.putAll(qubitMap);
        int i = 0;
        for (String qubit : qubitsNotInMap) {
          map.put(qubit, qubitMapping[i] ? 1 : 0);
          i++;
        }
        qubitMaps.add(map);
      }
    } else {
      qubitMaps.add(qubitMap);
    }

    for (int i = 0; i < qubitMaps.size(); i++) {
      List<Concrete> evaluatedCircuit = evalCircuit(c, qubitMaps.get(i), new HashMap<>(), new HashMap<>());
      List<Concrete> groupedCircuit = groupTerms(evaluatedCircuit, termsMap.get(c.getUsedQubits().size()));

      for (Concrete concrete : groupedCircuit) {
        if (!(concrete.getPhi().abs() - 0 < Math.pow(10, TOLERANCE))) {
          for (String qubit : expectedMap.keySet()) {
            if (c.getUsedQubits().contains(qubit)) {
              if (!(concrete.getF()[c.getUsedQubits().indexOf(qubit)] == expectedMap.get(qubit))) {
                return false;
              }
            }
          }
        }
      }
    }

    return true;
  }

  public List<SimpleEntry<Integer, List<Integer>>> hashCode(Circuit c, Map<String, Double> symbolMap) {
    ArrayList<SimpleEntry<Integer, List<Integer>>> result = new ArrayList<>();

    List<Map<String, Integer>> qubitMaps = getQubitMaps(c, termsMap.get(c.getQubits().size()));

    if (c.hasSymb()) {
      boolean[][] terms = termsMap.get(c.getUsedQubits().size());
      List<List<Integer>> perms = permsMap.get(terms.length);

      for (List<Integer> perm : perms) {
        ArrayList<List<Concrete>> evaluatedCircuits = new ArrayList<>();
        List<Map<String, Expr>> funMaps = getFunMaps(c, terms, perm);
        for (int i = 0; i < qubitMaps.size(); i++) {
          List<Concrete> evaluatedCircuit = evalCircuit(c, qubitMaps.get(i), symbolMap, funMaps.get(i % funMaps.size()));
          List<Concrete> groupedCircuit = groupTerms(evaluatedCircuit, termsMap.get(c.getQubits().size()));
          evaluatedCircuits.add(groupedCircuit);
        }
        result.add(new SimpleEntry<>(evaluatedCircuits.toString().hashCode(), perm));
      }
    } else {
      ArrayList<List<Concrete>> evaluatedCircuits = new ArrayList<>();
      for (Map<String, Integer> qubitMap : qubitMaps) {
        List<Concrete> evaluatedCircuit = evalCircuit(c, qubitMap, symbolMap, new HashMap<>());
        List<Concrete> groupedCircuit = groupTerms(evaluatedCircuit, termsMap.get(c.getQubits().size()));
        evaluatedCircuits.add(groupedCircuit);
      }
      result.add(new SimpleEntry<>(evaluatedCircuits.toString().hashCode(), new ArrayList<>()));
    }

    return result;
  }

  public Map<Integer, boolean[][]> getTermsMap() {
    return termsMap;
  }

  private boolean verifyHelper(Circuit c, boolean[][] terms, List<Map<String, Integer>> qubitMaps, List<Map<String, Expr>> funMap) {
    for (int i = 0; i < qubitMaps.size(); i++) {
      List<Concrete> evaluatedCircuit = evalCircuit(c, qubitMaps.get(i), new HashMap<>(), funMap.get(i % funMap.size()));
      List<Concrete> groupedCircuit = groupTerms(evaluatedCircuit, terms);
      if (!isZero(groupedCircuit)) {
        return false;
      }
    }
    return true;
  }

  private List<Map<String, Integer>> getQubitMaps(Circuit c, boolean[][] terms) {
    ArrayList<Map<String, Integer>> qubitMaps = new ArrayList<>();
    for (boolean[] qubitMapping : terms) {
      HashMap<String, Integer> qubitMap = new HashMap<>();
      int i = 0;
      for (String qubit : c.getQubits()) {
        qubitMap.put(qubit, qubitMapping[i] ? 1 : 0);
        i++;
      }
      qubitMaps.add(qubitMap);
    }

    return qubitMaps;
  }

  private List<Map<String, Expr>> getFunMaps(Circuit c, boolean[][] terms, List<Integer> perm) {
    if (perm.isEmpty()) {
      return Collections.nCopies(terms.length, new HashMap<>());
    }

    ArrayList<Map<String, Expr>> funMaps = new ArrayList<>();
    for (int i = 0; i < terms.length; i++) {
      boolean[] funVals = terms[perm.get(i)];
      HashMap<String, Expr> funMap = new HashMap<>();

      int j = 0;
      for (String qubit : c.getPathSum().get(0).getF().keySet()) {
        if (c.getUsedQubits().contains(qubit)) {
          funMap.put("F" + qubit, new Real(funVals[j] ? 1 : 0));
          j++;
        }
      }
      funMaps.add(funMap);
    }

    return funMaps;
  }

  private Circuit subtractCircuits(Circuit c1, Circuit c2) {
    for (String qubit : c1.getUsedQubits()) {
      if (!c2.hasQubit(qubit)) { c2.addQubit(qubit); }
    }
    for (String qubit : c2.getUsedQubits()) {
      if (!c1.hasQubit(qubit)) { c1.addQubit(qubit); }
    }

    ArrayList<String> qubits = new ArrayList<>(c1.getUsedQubits());

    ArrayList<PathSum> pathSum = new ArrayList<>();
    pathSum.addAll(c1.getPathSum());
    for (PathSum s : c2.getPathSum()) {
      PathSum negated = new PathSum(new UnOp(Op.MINUS, s.getPhi()), s.getF());
      pathSum.add(negated);
    }

    ArrayList<String> qasm = new ArrayList<>();
    qasm.addAll(c1.getQasm());
    qasm.addAll(c2.getQasm());

    Circuit c1Minusc2 = new Circuit(new ArrayList<>(c1.getQubits()), pathSum, qasm);
    c1Minusc2.setUsedQubits(qubits);

    return c1Minusc2;
  }

  /****************** Helpers for evaluating path sum ******************/
  private List<Concrete> evalCircuit(Circuit c,
                                     Map<String, Integer> qubitMap,
                                     Map<String, Double> symbolMap,
                                     Map<String, Expr> funMap) {
    ArrayList<Concrete> eval_circuit = new ArrayList<>();
    for (PathSum s : c.getPathSum()) {
      Complex eval_phi = evalExpr(s.getPhi(), qubitMap, symbolMap, funMap);
      boolean[] eval_f = new boolean[s.getF().size()];
      int i = 0;
      for (Expr e : s.getF().values()) {
        eval_f[i] = assertZeroOrOne(evalExpr(e, qubitMap, symbolMap, funMap)) == 1;
        i++;
      }
      eval_circuit.add(new Concrete(eval_phi, eval_f));
    }

    return eval_circuit;
  }

  private Pair<ArrayList<Expr>, ArrayList<boolean[]>> simplifyCircuitHelper(Circuit c,
                                     Map<String, Integer> qubitMap,
                                     Map<String, Expr> funMap) {
    ArrayList<Expr> simpExprs = new ArrayList<>();
    ArrayList<boolean[]> simpfs = new ArrayList<>();
    for (PathSum s : c.getPathSum()) {
//      System.out.println(simplifyExpr(s.getPhi(), qubitMap, funMap));
      Expr eval_phi = simpISQ2(simplifyExpr(s.getPhi(), qubitMap, funMap), 0, 1);
//      System.out.println(eval_phi);
      boolean[] eval_f = new boolean[s.getF().size()];
      int i = 0;
      for (Expr e : s.getF().values()) {
        eval_f[i] = assertZeroOrOne(evalExpr(e, qubitMap, new HashMap<>(), funMap)) == 1;
        i++;
      }
      simpExprs.add(eval_phi);
      simpfs.add(eval_f);
    }

    ArrayList<Expr> groupedExprs = new ArrayList<>();
    ArrayList<boolean[]> groupedfs = new ArrayList<>();
    boolean[][] terms = termsMap.get(c.getQubits().size());
    for (boolean[] term : terms) {
      Expr coefficient = null;
      for (int i = 0; i < simpExprs.size(); i++) {
        if (Arrays.equals(term, simpfs.get(i))) {
          if (coefficient == null) {
            coefficient = simpExprs.get(i);
          } else {
            coefficient = new BinOp(Op.ADD, coefficient, simpExprs.get(i));
          }
        }
      }
      if (coefficient != null) {
        groupedExprs.add(coefficient);
        groupedfs.add(term);
      }
    }

    return new Pair<>(groupedExprs, groupedfs);
  }

  private Expr simplifyCircuit(Circuit c, Map<String, Integer> qubitMap, Map<String, Expr> funMap) {
    Expr finalExpr = null;
    var evaluatedCircuit = simplifyCircuitHelper(c, qubitMap, funMap);
    for (int i = 0; i < evaluatedCircuit.getKey().size(); i++) {
      Expr e = evaluatedCircuit.getKey().get(i);
      boolean[] f = evaluatedCircuit.getValue().get(i);
      Symbol s = new Symbol("v"+qubitMap+Arrays.toString(f));

      if (finalExpr == null) {
        finalExpr = new BinOp(Op.MULT, s, e);
      } else {
        finalExpr = new BinOp(Op.ADD, finalExpr, new BinOp(Op.MULT, s, e));
      }
    }
    return finalExpr;
  }

  private <T> boolean containsTerm(Expr e, Class<T> term) {
    if (e.getClass() == term) return true;
    switch (e) {
      case UnOp uo: return containsTerm(uo.getE(), term);
      case BinOp bo: return containsTerm(bo.getE1(), term) || containsTerm(bo.getE2(), term);
      default: return false;
    }
  }

  private boolean containsUnop(Expr e, Op op) {
    if (e.getClass() == UnOp.class && ((UnOp) e).getOp() == op) return true;
    switch (e) {
      case UnOp uo: return containsUnop(uo.getE(), op);
      case BinOp bo: return containsUnop(bo.getE1(), op) || containsUnop(bo.getE2(), op);
      default: return false;
    }
  }

  private Expr simplifyUnop(UnOp uo, Map<String, Integer> qubitMap, Map<String, Expr> funMap) {
    Expr simpE = simplifyExpr(uo.getE(), qubitMap, funMap);
    switch (uo.getOp()) {
      case EXP: switch (simpE) {
        case Real r:
          //TODO: more cases
          if (r.getNumber() == 0) {
            return new Real(1);
          }
          return new UnOp(Op.EXP, simpE);
        case Constant c:
          if (c.getId().equals("pi")) {
            return new Real(-1);
          }
          return new UnOp(Op.EXP, simpE);
        case UnOp ue:
          if (ue.getOp() == Op.MINUS) {
            Expr simp = simplifyExpr(new UnOp(Op.EXP, ue.getE()), qubitMap, funMap);
            if (simp instanceof Real) {
              return new Real(Math.pow(((Real) simp).getNumber(), -1)); //TODO
            }
            if (simp instanceof BinOp && ((BinOp) simp).getOp() == Op.MULT) {
              if (((BinOp) simp).getE1() instanceof UnOp && ((UnOp) ((BinOp) simp).getE1()).getOp() == Op.EXP) {
                if (((BinOp) simp).getE2() instanceof UnOp && ((UnOp) ((BinOp) simp).getE2()).getOp() == Op.EXP) {
                  return new BinOp(Op.MULT, new UnOp(Op.EXP, new UnOp(Op.MINUS, ((UnOp) ((BinOp) simp).getE1()).getE())), new UnOp(Op.EXP, new UnOp(Op.MINUS, ((UnOp) ((BinOp) simp).getE2()).getE())));
                }
              }
            }
          }
          return new UnOp(Op.EXP, simpE);
        case BinOp bo:
          if (bo.getOp() == Op.ADD && containsTerm(simpE, Symbol.class)) {
            return new BinOp(Op.MULT, new UnOp(Op.EXP, bo.getE1()), new UnOp(Op.EXP, bo.getE2()));
          }
          if (bo.getOp() == Op.SUBTRACT && containsTerm(simpE, Symbol.class)) {
            return new BinOp(Op.MULT, new UnOp(Op.EXP, bo.getE1()), new UnOp(Op.EXP, new UnOp(Op.MINUS, bo.getE2())));
          }
          if (bo.getOp() == Op.DIV) {
            if (containsTerm(simpE, Symbol.class)) {
              Expr dividend = simplifyUnop(new UnOp(Op.EXP, bo.getE1()), qubitMap, funMap);
              if (dividend instanceof BinOp && ((BinOp) dividend).getOp() == Op.MULT) {
                if (((BinOp) dividend).getE1() instanceof UnOp && ((UnOp) ((BinOp) dividend).getE1()).getOp() == Op.EXP) {
                  if (((BinOp) dividend).getE2() instanceof UnOp && ((UnOp) ((BinOp) dividend).getE2()).getOp() == Op.EXP) {
                    return new BinOp(Op.MULT,
                            new UnOp(Op.EXP, new BinOp(Op.DIV, ((UnOp) ((BinOp) dividend).getE1()).getE(), bo.getE2())),
                            new UnOp(Op.EXP, new BinOp(Op.DIV, ((UnOp) ((BinOp) dividend).getE2()).getE(), bo.getE2())));
                  }
                }
              }
            }
            if (bo.getE1() instanceof Constant && ((Constant) bo.getE1()).getId().equals("pi") && bo.getE2() instanceof Real && ((Real) bo.getE2()).getNumber() == 2) {
              return ComplexRat.I;
            }
          }
          if (bo.getOp() == Op.MULT) {
              if ((bo.getE1() instanceof Constant || bo.getE1() instanceof BinOp) && bo.getE2() instanceof Real) {
                Expr simp = simplifyExpr(new UnOp(Op.EXP, bo.getE1()), qubitMap, funMap);
                if (simp instanceof Real) {
                  return new Real(Math.pow(((Real) simp).getNumber(), ((Real) bo.getE2()).getNumber()));
                }
                if (simp instanceof ComplexRat) {
                  //TODO handle not only I or at least check
                  var mod = Math.round(((Real) bo.getE2()).getNumber()) % 4;
                  if (mod == 0) {
                    return new Real(1);
                  } else if (mod == 1) {
                    return ComplexRat.I;
                  } else if (mod == 2) {
                    return new Real(-1);
                  } else if (mod == 3) {
                    return new UnOp(Op.MINUS, ComplexRat.I);
                  }
                }
              }
            if ((bo.getE2() instanceof Constant || bo.getE2() instanceof BinOp) && bo.getE1() instanceof Real) {
              Expr simp = simplifyExpr(new UnOp(Op.EXP, bo.getE2()), qubitMap, funMap);
              if (simp instanceof Real) {
                return new Real(Math.pow(((Real) simp).getNumber(), ((Real) bo.getE1()).getNumber()));
              }
              if (simp instanceof ComplexRat) {
                //TODO handle not only I or at least check
                var mod = Math.round(((Real) bo.getE1()).getNumber()) % 4;
                if (mod == 0) {
                  return new Real(1);
                } else if (mod == 1) {
                  return ComplexRat.I;
                } else if (mod == 2) {
                  return new Real(-1);
                } else if (mod == 3) {
                  return new UnOp(Op.MINUS, ComplexRat.I);
                }
              }
            }
          }
        default: return new UnOp(Op.EXP, simpE);
      }
      case MINUS: switch (simpE) {
        case UnOp ue: {
          if (ue.getOp() == Op.MINUS) return ue.getE();
          return new UnOp(Op.MINUS, simpE);
        }
        case BinOp be: {
          if (be.getOp() == Op.ADD) {
            return new BinOp(Op.SUBTRACT, new UnOp(Op.MINUS, be.getE1()), be.getE2());
          } else if (be.getOp() == Op.SUBTRACT) {
            return new BinOp(Op.SUBTRACT, be.getE2(), be.getE1());
          } else if (be.getOp() == Op.MULT) {
            return new BinOp(Op.MULT, new UnOp(Op.MINUS, be.getE1()), be.getE2());
          } //else if (be.getOp() == Op.DIV) {
           // return new BinOp(Op.DIV, new UnOp(Op.MINUS, be.getE1()), be.getE2());
          //}
          return new UnOp(Op.MINUS, simpE);
        }
        default: return new UnOp(Op.MINUS, simpE);
      }
      case NOT: {
        if (simpE instanceof Real) {
          return ((Real) simpE).getNumber() == 1 ? new Real(0) : new Real(1);
        }
      }
      default: return new UnOp(uo.getOp(), simpE);
    }
  }

  private Expr simplifyBinop(BinOp bo, Map<String, Integer> qubitMap, Map<String, Expr> funMap) {
    Expr simpE1 = simplifyExpr(bo.getE1(), qubitMap, funMap);
    Expr simpE2 = simplifyExpr(bo.getE2(), qubitMap, funMap);
    switch (bo.getOp()) {
      case ADD: {
        if (simpE1 instanceof Real && simpE2 instanceof Real) {
          return new Real(((Real) simpE1).getNumber() + ((Real) simpE2).getNumber());
        }
        if (simpE1 instanceof Real) {
          if (((Real) simpE1).getNumber() == 0) {
            return simpE2;
          }
        }
        if (simpE2 instanceof Real) {
          if (((Real) simpE2).getNumber() == 0) {
            return simpE1;
          }
        }
      }
      case SUBTRACT: {
        if (simpE1 instanceof Real && simpE2 instanceof Real) {
          return new Real(((Real) simpE1).getNumber() - ((Real) simpE2).getNumber());
        }
        if (simpE1 instanceof Real) {
          if (((Real) simpE1).getNumber() == 0) {
            return simplifyExpr(new UnOp(Op.MINUS, simpE2), qubitMap, funMap);
          }
        }
        if (simpE2 instanceof Real) {
          if (((Real) simpE2).getNumber() == 0) {
            return simpE1;
          }
        }
      }
      case MULT: {
        if (simpE1 instanceof UnOp && ((UnOp) simpE1).getOp() == Op.EXP && simpE2 instanceof UnOp && ((UnOp) simpE2).getOp() == Op.EXP) {
          if (((UnOp) simpE1).getE() instanceof Real && ((UnOp) simpE2).getE() instanceof Real) {
            return simplifyExpr(new UnOp(Op.EXP, new BinOp(Op.ADD, ((UnOp) simpE1).getE(), ((UnOp) simpE2).getE())), qubitMap, funMap);
          }
        }
        if (simpE1 instanceof Real && simpE2 instanceof Real) {
          return new Real(((Real) simpE1).getNumber() * ((Real) simpE2).getNumber());
        }
        if (simpE1 instanceof Real) {
          if (((Real) simpE1).getNumber() == 0) {
            return new Real(0);
          }
          if (((Real) simpE1).getNumber() == 1) {
            return simpE2;
          }
          if (((Real) simpE1).getNumber() == -1) {
            return simplifyExpr(new UnOp(Op.MINUS, simpE2), qubitMap, funMap);
          }
        }
        if (simpE2 instanceof Real) {
          if (((Real) simpE2).getNumber() == 0) {
            return new Real(0);
          }
          if (((Real) simpE2).getNumber() == 1) {
            return simpE1;
          }
          if (((Real) simpE2).getNumber() == -1) {
            return simplifyExpr(new UnOp(Op.MINUS, simpE1), qubitMap, funMap);
          }
        }
      }
      case DIV: {
        if (simpE1 instanceof UnOp && ((UnOp) simpE1).getOp() == Op.EXP && simpE2 instanceof UnOp && ((UnOp) simpE2).getOp() == Op.EXP) {
          if (((UnOp) simpE1).getE() instanceof Real && ((UnOp) simpE2).getE() instanceof Real) {
            return simplifyExpr(new UnOp(Op.EXP, new BinOp(Op.SUBTRACT, ((UnOp) simpE1).getE(), ((UnOp) simpE2).getE())), qubitMap, funMap);
          }
        }
        if (simpE1 instanceof Real) {
          if (((Real) simpE1).getNumber() == 0) {
            return new Real(0);
          }
        }
        if (simpE2 instanceof Real) {
          if (((Real) simpE2).getNumber() == 1) {
            return simpE1;
          }
          if (((Real) simpE2).getNumber() == -1) {
            return simplifyExpr(new UnOp(Op.MINUS, simpE1), qubitMap, funMap);
          }
        }
      }
      case XOR: {
        if (simpE1 instanceof Real && simpE2 instanceof Real) {
          return new Real ((((Real) simpE1).getNumber()+((Real) simpE2).getNumber()) % 2);
        }
      }
      default: return new BinOp(bo.getOp(), simpE1, simpE2);
    }
  }

  private Expr simplifyExpr(Expr e, Map<String, Integer> qubitMap, Map<String, Expr> funMap) {
    switch (e) {
      case Constant c: {
        if (c.getId().equals("i")) {
          return ComplexRat.I;
        } else {
          return c;
        }
      }
      case Symbol s: if (s.getSymbol().equals("phi")) {
        return new Symbol("phi"+qubitMap);
      } else {
        return s;
      }
      case Bool b: return b.isBool() ? new Real(1) : new Real(0);
      case Var v: return new Real(qubitMap.get(v.getId()));
      case Fun f: return new Real(assertZeroOrOne(evalFun(f, qubitMap, new HashMap<>(), funMap)));
      case UnOp uo: return simplifyUnop(uo, qubitMap, funMap);
      case BinOp bo: return simplifyBinop(bo, qubitMap, funMap);
      default: return e;
    }
  }

  private ComplexRat getRandComplexRat() {
    long randLong = randomDataGenerator.nextLong(1L,  Long.MAX_VALUE);
    BigFraction r = new BigFraction(1L, randLong);
    return new ComplexRat(r.multiply(r).subtract(BigFraction.ONE).divide(BigFraction.ONE.add(r.multiply(r))),
            BigFraction.TWO.multiply(r).divide(BigFraction.ONE.add(r.multiply(r))));
  }

  private ComplexRat getRandRat() {
    long randLong = randomDataGenerator.nextLong(1L, Long.MAX_VALUE);
    return new ComplexRat(
            new BigFraction(randLong),
            BigFraction.ZERO);
  }

  private ComplexRat evaluateExpr(Expr e, Map<String, ComplexRat> samples, ArrayList<ComplexRat> multOtherSide) {
    switch (e) {
      case ComplexRat c: return c;
      case Constant c:
        if (c.getId().equals("i")) {
          return ComplexRat.I;
        } else {
          if (samples.containsKey(c.getId())) {
            return samples.get(c.getId());
          } else {
            ComplexRat randRat = getRandRat();
            samples.put(c.getId(), randRat);
            return randRat;
          }
        }
      case Bool b: return b.isBool() ? ComplexRat.ONE : ComplexRat.ZERO;
      case Symbol v: if (samples.containsKey(v.getSymbol())) {
        return samples.get(v.getSymbol());
      } else {
        ComplexRat randComplex = getRandComplexRat();
        samples.put(v.getSymbol(), randComplex);
        return randComplex;
      }
      case UnOp uo: return evaluateUnop(uo, samples, multOtherSide);
      case BinOp bo: return evaluateBinop(bo, samples, multOtherSide);
      case Real r: return new ComplexRat(new BigFraction((int) r.getNumber()), BigFraction.ZERO);
      default:
        System.out.println(e); throw new RuntimeException("evaluateExpr");
    }
  }

  private ComplexRat evaluateUnop(UnOp uo, Map<String, ComplexRat> samples, ArrayList<ComplexRat> multOtherSide) {
    switch (uo.getOp()) {
      case EXP: if (containsTerm(uo, Symbol.class)) {
        if (uo.getE() instanceof UnOp) {
          if (((UnOp) uo.getE()).getOp() == Op.MINUS) {
            UnOp uop = new UnOp(Op.EXP, ((UnOp) uo.getE()).getE());
            if (samples.containsKey(uop.toString())) {
              multOtherSide.add(samples.get(uop.toString()));
            } else {
              if (((UnOp) uo.getE()).getE() instanceof BinOp && ((BinOp) ((UnOp) uo.getE()).getE()).getOp() == Op.DIV) {
                if (samples.containsKey(new UnOp(Op.EXP, ((BinOp) ((UnOp) uo.getE()).getE()).getE1()).toString())) {
                  throw new RuntimeException("theta variable sampled before fractional theta");
                }

                ComplexRat randComplexRat = getRandComplexRat();
                samples.put(uop.toString(), randComplexRat);
                samples.put(new UnOp(Op.EXP, ((BinOp) ((UnOp) uo.getE()).getE()).getE1()).toString(), randComplexRat.pow((int) ((Real) ((BinOp) ((UnOp) uo.getE()).getE()).getE2()).getNumber()));
                multOtherSide.add(randComplexRat);
              }
            }
            return samples.get(uop.toString()).inverse();
          }
        }
        if (uo.getE() instanceof BinOp && ((BinOp) uo.getE()).getOp() == Op.DIV) {
//          if (((BinOp) uo.getE()).getE1() instanceof UnOp && ((UnOp) ((BinOp) uo.getE()).getE1()).getOp() == Op.MINUS) {
////            System.out.println(uo);
//            UnOp uop = new UnOp(Op.EXP, new BinOp(Op.DIV, ((UnOp) ((BinOp) uo.getE()).getE1()).getE(), ((BinOp) uo.getE()).getE2()));
////            System.out.println(uop);
//            if (samples.containsKey(uop.toString())) {
//              multOtherSide.add(samples.get(uop.toString()));
//            } else {
//              if (samples.containsKey(((UnOp) ((BinOp) uo.getE()).getE1()).getE().toString())) {
//                throw new RuntimeException("theta variable sampled before fractional theta");
//              }
//
//              ComplexRat randComplexRat = getRandComplexRat();
//              samples.put(uop.toString(), randComplexRat);
//              samples.put(((UnOp) ((BinOp) uo.getE()).getE1()).getE().toString(), randComplexRat.pow((int) ((Real) ((BinOp) uo.getE()).getE2()).getNumber()));
//              multOtherSide.add(randComplexRat);
//            }
//            return  ComplexRat.ONE;
//          }
//          if (containsUnop(uo.getE(), Op.EXP)) {
//            UnOp uop = new UnOp(Op.EXP, new BinOp(Op.DIV, ((UnOp) ((BinOp) uo.getE()).getE1()).getE(), ((BinOp) uo.getE()).getE2()));
//            if (samples.containsKey(uop.toString())) {
//              multOtherSide.add(samples.get(uop.toString()));
//            } else {
//              if (samples.containsKey(((UnOp) ((BinOp) uo.getE()).getE1()).getE().toString())) {
//                throw new RuntimeException("theta variable sampled before fractional theta");
//              }
//
//              ComplexRat randComplexRat = getRandComplexRat();
//              samples.put(uop.toString(), randComplexRat);
//              samples.put(((UnOp) ((BinOp) uo.getE()).getE1()).getE().toString(), randComplexRat.pow((int) ((Real) ((BinOp) uo.getE()).getE2()).getNumber()));
//              multOtherSide.add(randComplexRat);
//            }
//            return ComplexRat.ONE;
//          }

          if (samples.containsKey(uo.toString())) {
            return samples.get(uo.toString());
          } else {
            if (samples.containsKey(new UnOp(Op.EXP, ((BinOp) uo.getE()).getE1()).toString())) {
              throw new RuntimeException("theta variable sampled before fractional theta");
            }

            ComplexRat randComplexRat = getRandComplexRat();
            samples.put(uo.toString(), randComplexRat);
            samples.put(new UnOp(Op.EXP, ((BinOp) uo.getE()).getE1()).toString(), randComplexRat.pow((int) ((Real) ((BinOp) uo.getE()).getE2()).getNumber()));
            return randComplexRat;
          }
        }
      }
      case MINUS: {
        ComplexRat v = evaluateExpr(uo.getE(), samples, multOtherSide);
        return v.negate();
      }
      case NOT: {
        ComplexRat v = evaluateExpr(uo.getE(), samples, multOtherSide);
        if (v.equals(ComplexRat.ONE)) {
          return ComplexRat.ZERO;
        }
        if (v.equals(ComplexRat.ZERO)) {
          return ComplexRat.ONE;
        }
      }
      default: throw new RuntimeException("unimplemented unop evaluateUnop: "+uo.getOp());
    }
  }

  private boolean isISQ2(Expr e) {
    return e instanceof Constant && ((Constant) e).getId().equals("isq2");
  }

  private boolean isNegISQ2(Expr e) {
    return e instanceof UnOp && ((UnOp) e).getOp() == Op.MINUS && isISQ2(((UnOp) e).getE());
  }

  private Expr simpISQ2(Expr e, int gas, int sign) {
    if (e instanceof BinOp && ((BinOp) e).getOp() == Op.MULT) {
      if (isISQ2(((BinOp) e).getE1())) {
        if (isISQ2(((BinOp) e).getE2())) {
          if (gas % 2 == 0) {
            if (sign == -1) {
              return new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO).negate();
            } else {
              return new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO);
            }
          } else {
            if (sign == -1) {
              return new UnOp(Op.MINUS, new BinOp(Op.MULT, new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO), new Symbol("isq2")));
            } else {
              return new BinOp(Op.MULT, new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO), new Symbol("isq2"));
            }
          }
        }

        if (isNegISQ2(((BinOp) e).getE2())) {
          if (gas % 2 == 0) {
            if (sign == -1) {
              return new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO);
            } else {
              return new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO).negate();
            }
          } else {
            if (sign == 1) {
              return new UnOp(Op.MINUS, new BinOp(Op.MULT, new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO), new Symbol("isq2")));
            } else {
              return new BinOp(Op.MULT, new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO), new Symbol("isq2"));
            }
          }
        }
      }

      if (isISQ2(((BinOp) e).getE2())) {
        if (isISQ2(((BinOp) e).getE1())) {
          if (gas % 2 == 0) {
            if (sign == -1) {
              return new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO).negate();
            } else {
              return new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO);
            }
          } else {
            if (sign == -1) {
              return new UnOp(Op.MINUS, new BinOp(Op.MULT, new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO), new Symbol("isq2")));
            } else {
              return new BinOp(Op.MULT, new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO), new Symbol("isq2"));
            }
          }
        }

        if (isNegISQ2(((BinOp) e).getE1())) {
          if (gas % 2 == 0) {
            if (sign == -1) {
              return new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO);
            } else {
              return new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO).negate();
            }
          } else {
            if (sign == 1) {
              return new UnOp(Op.MINUS, new BinOp(Op.MULT, new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO), new Symbol("isq2")));
            } else {
              return new BinOp(Op.MULT, new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO), new Symbol("isq2"));
            }
          }
        }
      }

      if (isNegISQ2(((BinOp) e).getE1())) {
        if (isNegISQ2(((BinOp) e).getE2())) {
          if (gas % 2 == 0) {
            if (sign == -1) {
              return new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO).negate();
            } else {
              return new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO);
            }
          } else {
            if (sign == -1) {
              return new UnOp(Op.MINUS, new BinOp(Op.MULT, new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO), new Symbol("isq2")));
            } else {
              return new BinOp(Op.MULT, new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO), new Symbol("isq2"));
            }
          }
        }
      }

      if (isISQ2(((BinOp) e).getE2())) {
        return simpISQ2(((BinOp) e).getE1(), gas+1, sign);
      } else if (isNegISQ2(((BinOp) e).getE2())) {
        return simpISQ2(((BinOp) e).getE1(), gas+1, sign * -1);
      } else {
        if (isISQ2(((BinOp) e).getE1())) {
          return simpISQ2(((BinOp) e).getE2(), gas+1, sign);
        } else if (isNegISQ2(((BinOp) e).getE1())) {
          return simpISQ2(((BinOp) e).getE2(), gas+1, sign * -1);
        }
        return new BinOp(Op.MULT, simpISQ2(((BinOp) e).getE1(), gas, sign), ((BinOp) e).getE2());
      }


    }

    if (gas == 0) {
      if (sign == -1) {
        return new UnOp(Op.MINUS, e);
      }
      return e;
    }

    if (gas % 2 == 0) {
      BigFraction halves = new BigFraction(gas / 2);
      if (sign == -1) {
        return new UnOp(Op.MINUS, new BinOp(Op.MULT, new ComplexRat(halves.multiply(BigFraction.ONE_HALF), BigFraction.ZERO), e));
      }
      return new BinOp(Op.MULT, new ComplexRat(halves.multiply(BigFraction.ONE_HALF), BigFraction.ZERO), e);
    } else {
      BigFraction halves = new BigFraction((gas - 1) / 2);
      if (sign == -1) {
        return new UnOp(Op.MINUS, new BinOp(Op.MULT, new BinOp(Op.MULT, new ComplexRat(halves.multiply(BigFraction.ONE_HALF), BigFraction.ZERO), e), new Constant("isq2")));
      }
      return new BinOp(Op.MULT, new BinOp(Op.MULT, new ComplexRat(halves.multiply(BigFraction.ONE_HALF), BigFraction.ZERO), e), new Constant("isq2"));
    }
  }

  private ComplexRat evaluateBinop(BinOp bo, Map<String, ComplexRat> samples, ArrayList<ComplexRat> multOtherSide) {
    if (bo.getOp() == Op.MULT) {
      if (bo.getE1() instanceof Constant && bo.getE2() instanceof Constant) {
        if (((Constant) bo.getE1()).getId().equals("isq2") && ((Constant) bo.getE2()).getId().equals("isq2")) {
          return new ComplexRat(BigFraction.ONE_HALF, BigFraction.ZERO);
        }
      }
    }

    ComplexRat v1 = evaluateExpr(bo.getE1(), samples, multOtherSide);
    ComplexRat v2 = evaluateExpr(bo.getE2(), samples, multOtherSide);
    switch (bo.getOp()) {
      case ADD:
        return v1.add(v2);
      case SUBTRACT:
        return v1.subtract(v2);
      case MULT:
        return v1.multiply(v2);
      case DIV:
        return v1.divide(v2);
      case XOR:
        ComplexRat v = v1.add(v2);
        if (v.equals(ComplexRat.ZERO)) {
          return ComplexRat.ZERO;
        } else if (v.equals(ComplexRat.ONE)) {
          return ComplexRat.ONE;
        } else if (v.equals(ComplexRat.ONE.add(ComplexRat.ONE))) {
          return ComplexRat.ZERO;
        }
      default: throw new RuntimeException(String.format("unimplemented BinOp: %s", bo.getOp()));
    }
  }

  public Complex evalExpr(Expr e,
                           Map<String, Integer> qubitMap,
                           Map<String, Double> symbolMap,
                           Map<String, Expr> funMap) {
    switch (e) {
      case Real r: return new Complex(r.getNumber());
      case Bool b: return b.isBool() ? Complex.ONE : Complex.ZERO;
      case Var v: return new Complex(qubitMap.get(v.getId()));
      case Symbol s: return evalSymbol(s, qubitMap, symbolMap, funMap);
      case Fun f: return evalFun(f, qubitMap, symbolMap, funMap);
      case UnOp uo: return evalUnOp(uo, qubitMap, symbolMap, funMap);
      case BinOp bo: return evalBinOp(bo, qubitMap, symbolMap, funMap);
      case Constant c: if (c.getId().equals("i")) {
        return Complex.I;
      } else if (c.getId().equals("pi")) {
        return new Complex(Math.PI);
      } else if (c.getId().equals("isq2")) {
        return Complex.ONE.divide(new Complex(2).sqrt());
      }
      default:
        System.out.println(e); assert false; return null; // stupid hack to make the compiler happy ugh
    }
  }

  private Complex evalSymbol(Symbol s,
                             Map<String, Integer> qubitMap,
                             Map<String, Double> symbolMap,
                             Map<String, Expr> funMap) {
    String symbol = s.getSymbol();
    switch (symbol) {
      case PathSum.S_I: return Complex.I;
      case PathSum.S_PI: return new Complex(Math.PI);
      case PathSum.S_PHI: {
        if (symbolMap.containsKey(symbol)) {
          return Complex.I.multiply(Math.PI).multiply(symbolMap.get(symbol)).exp();
        } else {
          double randDouble = rand.nextDouble();
          Complex v = Complex.I.multiply(Math.PI).multiply(randDouble).exp();
          symbolMap.put(symbol, randDouble);
          return v;
        }
      }
      default: {
        assert symbol.contains("theta");
        if (symbolMap.containsKey(symbol)) {
          return new Complex(symbolMap.get(symbol));
        } else {
          double randDouble = rand.nextDouble();
          symbolMap.put(symbol, randDouble);
          return new Complex(randDouble);
        }
      }
    }
  }

  private Complex evalFun(Fun f,
                          Map<String, Integer> qubitMap,
                          Map<String, Double> symbolMap,
                          Map<String, Expr> funMap) {
    Complex arg = evalExpr(f.getArg(), qubitMap, symbolMap, funMap);
    int v = assertZeroOrOne(arg);
    if (funMap.containsKey(f.getName())) {
      qubitMap.put(f.getQubit(), v);
      return evalExpr(funMap.get(f.getName()), qubitMap, symbolMap, funMap);
    } else {
      return arg;
    }
  }

  private Complex evalUnOp(UnOp uo,
                           Map<String, Integer> qubitMap,
                           Map<String, Double> symbolMap,
                           Map<String, Expr> funMap) {
    Complex v = evalExpr(uo.getE(), qubitMap, symbolMap, funMap);
    switch (uo.getOp()) {
      case EXP: return Complex.I.multiply(v).exp();
      case SQRT: return v.sqrt();
      case MINUS: return v.negate();
      case NOT: {
        int vint = assertZeroOrOne(v);
        return vint == 0 ? Complex.ONE : Complex.ZERO;
      }
      case COS: return v.cos();
      case SIN: return v.sin();
      default: throw new RuntimeException(String.format("unimplemented UnOp: %s", uo.getOp()));
    }
  }

  private Complex evalBinOp(BinOp bo,
                            Map<String, Integer> qubitMap,
                            Map<String, Double> symbolMap,
                            Map<String, Expr> funMap) {
    Complex v1 = evalExpr(bo.getE1(), qubitMap, symbolMap, funMap);
    Complex v2 = evalExpr(bo.getE2(), qubitMap, symbolMap, funMap);
    switch (bo.getOp()) {
      case ADD: return v1.add(v2);
      case SUBTRACT: return v1.subtract(v2);
      case MULT: return v1.multiply(v2);
      case DIV: return v1.divide(v2);
      case XOR: {
        int v1int = assertZeroOrOne(v1);
        int v2int = assertZeroOrOne(v2);
        return new Complex(v1int ^ v2int);
      }
      case AND: {
        int v1int = assertZeroOrOne(v1);
        int v2int = assertZeroOrOne(v2);
        return new Complex(v1int & v2int);
      }
      case OR: {
        int v1int = assertZeroOrOne(v1);
        int v2int = assertZeroOrOne(v2);
        return new Complex(v1int | v2int);
      }
      default: throw new RuntimeException(String.format("unimplemented BinOp: %s", bo.getOp()));
    }
  }

  private int assertZeroOrOne(Complex c) {
    if (Math.round(c.getImaginary()) != 0) {
      throw new RuntimeException("unreachable. complex val in f");
    }

    long v = Math.round(c.getReal());
    if (v != 0 && v != 1) {
      throw new RuntimeException("unreachable. non-bool val in f");
    }

    return (int) v;
  }

  private List<Concrete> groupTerms(List<Concrete> evaluatedCircuit, boolean[][] terms) {
    ArrayList<Concrete> groupedCircuit = new ArrayList<>();
    for (boolean[] term : terms) {
      Complex coefficient = Complex.ZERO;
      for (Concrete c : evaluatedCircuit) {
        if (Arrays.equals(term, c.getF())) {
          coefficient = coefficient.add(c.getPhi());
        }
      }
      groupedCircuit.add(new Concrete(coefficient, term));
    }
    return groupedCircuit;
  }

  private boolean isZero(List<Concrete> groupedCircuit) {
    for (Concrete c : groupedCircuit) {
      if (!(c.getPhi().abs() - 0 < Math.pow(10, TOLERANCE))) {
        return false;
      }
    }
    return true;
  }

  private boolean[][] generateTerms(int numQubits) {
    int numTerms = 1 << numQubits;
    boolean[][] terms = new boolean[numTerms][numQubits];
    for (int i = 0; i < numTerms; i++) {
      for (int j = 0; j < numQubits; j++) {
        terms[i][j] = (1 & ((numTerms * j + i) >> j)) == 1;
      }
    }

    return terms;
  }

  private void perm(int numItems, List<Integer> perm, int length,  List<List<Integer>> acc) {
    if (perm.size() == length) {
      acc.add(perm);
      return;
    }

    for (int i = 0; i < numItems; i++) {
      ArrayList<Integer> copy = new ArrayList<>(perm);
      if (!copy.contains(i)) {
        copy.add(i);
        perm(numItems, copy, length, acc);
      }
    }
  }
  // for testing
  public static void main(String[] args) {
    ArrayList<String> qubits = new ArrayList<>(Arrays.asList("q0", "q1", "q2"));
    Expr phi = new Real(1);
    TreeMap<String, Expr> f = new TreeMap<>(Map.of(
            "q0", new Var("q0"),
            "q1", new Var("q1"),
            "q2", new Var("q2")
    ));

    PathSum s = new PathSum(phi, f);
    ArrayList<PathSum> pathSum = new ArrayList<>(Arrays.asList(s));
    Circuit c1 = new Circuit(qubits, pathSum, new ArrayList<>()) ;

    ArrayList<String> qubits2 = new ArrayList<>(Arrays.asList("q0", "q1", "q2"));
    Expr phi2 = new Real(1);
    TreeMap<String, Expr> f2 = new TreeMap<>(Map.of(
            "q0", new Var("q0"),
            "q1", new Var("q1"),
            "q2", new Var("q2")
    ));

    PathSum s2 = new PathSum(phi2, f2);
    ArrayList<PathSum> pathSum2 = new ArrayList<>(Arrays.asList(s2));

    Circuit c2 = new Circuit(qubits2, pathSum2, new ArrayList<>());

//    Symbolic.rz(c1, "q0", new BinOp(Op.ADD, new Symbol("theta1"), new Symbol("theta2")));
//    Symbolic.symb(c1, 2);
//
//    Symbolic.rz(c2, "q0", new Symbol("theta1"));
//    Symbolic.symb(c2, 2);
//    Symbolic.rz(c2, "q1", new Symbol("theta2"));
//    Symbolic.h(c1, "q2");
//    Symbolic.x(c1, "q2");
//    Symbolic.h(c1, "q2");
//    Symbolic.rz(c1, "q2", new Symbol("theta1"));
    PathSum.symb(c1, 2);
    PathSum.rz(c1, "q1", new Symbol("theta2"));
//    Symbolic.rz(c1, "q1", new Symbol("theta2"));
//    Symbolic.cx(c1, "q1", "q2");


    PathSum.x(c2, "q1");
    PathSum.rz(c2, "q1", new Symbol("theta2"));
    PathSum.symb(c2, 2);
//    Symbolic.rz(c2, "q0", new Symbol("theta2"));
//    Symbolic.rz(c1, "q2", new Symbol("theta2"));
//    Symbolic.cx(c2, "q2", "q1");
//    Symbolic.h(c2, "q2");
//    Symbolic.h(c2, "q1");
//    Symbolic.rz(c2, "q2", new BinOp(Op.ADD, new Symbol("theta1"), new Symbol("theta2")));

//    Symbolic.rz(c2, "q2", new Symbol("theta1"));
//    Symbolic.h(c2, "q2");
//    Symbolic.x(c2, "q2");
//    Symbolic.h(c2, "q2");


    Verifier verifier = new Verifier(new Random(), 3);
//    HashMap<String, Integer> qubitMap = new HashMap<>();
//    qubitMap.put("q0", 1);
//    qubitMap.put("q1", 1);

//    System.out.println(verifier.simpISQ2( new BinOp(Op.MULT, new BinOp(Op.MULT, new BinOp(Op.MULT, new Symbol("x"), new Constant("isq2")), new Constant("isq2")), new Symbol("y")), 0));
    ArrayList<Integer> perm = new ArrayList<>();
    perm.add(3);
    perm.add(2);
    perm.add(0);
    perm.add(1);
    System.out.println(verifier.verifyRational(c1, c2, perm));

//    funMap.put("Fq0", new Real(0));
//    funMap.put("Fq1", new Real(0));
//    for (Symbolic sym : c1.getPathSum()) {
//      System.out.println(verifier.simplifyExpr(sym.getPhi(), qubitMap, funMap));
//      boolean[] eval_f = new boolean[sym.getF().size()];
//      int i = 0;
//      for (Expr e : sym.getF().values()) {
//        eval_f[i] = verifier.assertZeroOrOne(verifier.evalExpr(e, qubitMap, new HashMap<>(), funMap)) == 1;
//        i++;
//      }
//      System.out.println(Arrays.toString(eval_f));
//    }
//    Symbolic.cz(c1, "q0", "q1");
//    Symbolic.rx(c1, "q0", new Symbol("pi"));
//    Symbolic.rz(c1, "q0", new Symbol("theta1"));
//    Symbolic.symb(c1, 2);
//    Symbolic.rz(c1, "q1", new Symbol("theta2"));
//     Symbolic.cx(c1, "q1", "q0");
//     Symbolic.h(c1, "q1");
//     Symbolic.h(c1, "q0");
//    Symbolic.x(c1, "q0");
//    Symbolic.h(c1, "q0");
//    Symbolic.rz(c1, "q0", new Symbol("theta1"));
//    Symbolic.h(c1, "q0");
//    Symbolic.x(c1, "q0");


//    ArrayList<String> qubits2 = new ArrayList<>(Arrays.asList("q0", "q1"));
//    Expr phi2 = new Real(1);
//    TreeMap<String, Expr> f2 = new TreeMap<>(Map.of(
//            "q0", new Var("q0"),
//            "q1", new Var("q1")
//    ));
//
//    Symbolic s2 = new Symbolic(phi2, f2);
//    ArrayList<Symbolic> pathSum2 = new ArrayList<>(Arrays.asList(s2));
//    Circuit c2 = new Circuit(qubits2, pathSum2, new ArrayList<>());
//
////    Symbolic.rz(c2, "q0", new BinOp(Op.PLUS, new Symbol("theta1"), new Symbol("theta2")));
////    Symbolic.symb(c2, 2);
//    Symbolic.cz(c2, "q0", "q1");
//    Symbolic.rx(c2, "q0", new Symbol("pi"));
//    Symbolic.rz(c2, "q0", new BinOp(Op.SUBTRACT, new Symbol("theta1"), new Symbol("theta2")));
////     Symbolic.h(c2, "q1");
////     Symbolic.h(c2, "q0");
////     Symbolic.cx(c2, "q0", "q1");
////    Symbolic.x(c2, "q0");
////    Symbolic.x(c2, "q0");
////    Symbolic.cx(c2, "q0", "q1");
////    Symbolic.rz(c2, "q0", new Symbol("theta1"));
////      Symbolic.h(c2, "q0");
//
//
//    Random rand = new Random();
//    rand.setSeed(54);
//    Verifier verifier = new Verifier(rand, 2);
//    List<List<Integer>> result = verifier.verify(c1, c2);
//
//    if (result == null) {
//      System.out.println("not eq");
//    } else {
//      if (result.size() == 0) {
//        System.out.println("eq, no constraints");
//      } else {
//        System.out.println("eq, constraints: " + result.toString());
//      }
//    }
//
////    System.out.println(Arrays.deepToString(verifier.termsMap.get(2)));
////    System.out.println(Arrays.deepToString(verifier.termsMap.get(3)));
//
//     HashMap<String, Double> symbolMap = new HashMap<>();
//     symbolMap.put(Symbolic.S_PHI, rand.nextDouble());
//     symbolMap.put("theta1", rand.nextDouble());
//     symbolMap.put("theta2", rand.nextDouble());
//     System.out.println(verifier.hashCode(c1, symbolMap));
//     System.out.println(verifier.hashCode(c2, symbolMap));
  }
}
