import ast.*;
import com.mxgraph.layout.mxCircleLayout;
import com.mxgraph.layout.mxIGraphLayout;
import com.mxgraph.util.mxCellRenderer;
import org.apache.commons.cli.*;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.math3.util.Pair;
import org.jgrapht.GraphTests;
import org.jgrapht.Graphs;
import org.jgrapht.alg.lca.NaiveLCAFinder;
import org.jgrapht.ext.JGraphXAdapter;
import org.jgrapht.graph.DirectedMultigraph;
import org.jgrapht.traverse.TopologicalOrderIterator;

import javax.imageio.ImageIO;
import java.awt.Color;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.FileSystems;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.PriorityQueue;
import java.util.Random;
import java.util.Set;
import java.util.TreeMap;

public class Optimizer {

    private Verifier verifier;

    public Optimizer(Random rand, int maxQubits) {
        this.verifier = new Verifier(rand, maxQubits);
    }

    private void addEdges(DirectedMultigraph<Node, Edge> dag,
                          Map<String, Node> qubitToLeaf,
                          Map<String, Node> qubitNodes,
                          Node gateNode) {
        for (String qubit : gateNode.getQubits()) {
            if (qubit != null) {
                if (qubitToLeaf.containsKey(qubit)) {
                    Node anc = qubitToLeaf.get(qubit);
                    dag.addEdge(anc, gateNode, getEdge(anc, gateNode, qubit));
                }
                qubitToLeaf.put(qubit, gateNode);
                if (!qubitNodes.containsKey(qubit)) {
                    Node qubitNode = new Node(qubit, Node.Type.QUBIT_SOURCE, null, null);
                    dag.addVertex(qubitNode);
                    dag.addEdge(qubitNode, gateNode, getEdge(qubitNode, gateNode, qubit));
                    qubitNodes.put(qubit, qubitNode);
                }
            }
        }
    }

    private String getParamGate(String gate) {
        if (gate.contains("(")) {
            return gate.substring(0, gate.indexOf("("));
        }
        return gate;
    }

    private String[] getParams(String gate) {
        String params = gate.substring(gate.indexOf("(")+1, gate.indexOf(")"));
        return params.split(",");
    }

    private Expr parsePiAngle(String angle) {
        if (angle.charAt(0) == '-') {
            return new UnOp(Expr.Op.MINUS, parsePiAngle(angle.substring(1)));
        }
        if (angle.contains("*")) {
            return new BinOp(Expr.Op.MULT, new Real(Double.parseDouble(angle.substring(0, angle.indexOf("*")))), parsePiAngle(angle.substring(angle.indexOf("*")+1)));
        }
        if (angle.contains("/") && angle.startsWith("pi")) {
            return new BinOp(Expr.Op.DIV, new Symbol("pi"), new Real(Double.parseDouble(angle.substring(angle.indexOf("/")+1))));
        }
        if (angle.equals("pi")) {
            return new Symbol("pi");
        }
        throw new RuntimeException(String.format("can't parse angle param: %s", angle));
    }

    private boolean isMult2PI(double angle) {
        return angle % (2*Math.PI) == 0;
    }

    private void parseAngles(String gate, List<Expr> angles) {
        String[] params = getParams(gate);
        for (String param : params) {
            switch (param) {
                case "theta1":
                case "theta2":
                case "theta3":
                case "theta4": {
                    angles.add(new Symbol(param));
                    break;
                }
                case "theta1 SUBTRACT theta2": {
                    angles.add(new BinOp(Expr.Op.SUBTRACT, new Symbol("theta1"), new Symbol("theta2")));
                    break;
                }
                case "theta1 PLUS theta2": {
                    angles.add(new BinOp(Expr.Op.ADD, new Symbol("theta1"), new Symbol("theta2")));
                    break;
                }
                case "theta3 PLUS theta4": {
                    angles.add(new BinOp(Expr.Op.ADD, new Symbol("theta3"), new Symbol("theta4")));
                    break;
                }
                case "theta1 PLUS theta2 PLUS theta3": {
                    angles.add(new BinOp(Expr.Op.ADD, new Symbol("theta1"), new BinOp(Expr.Op.ADD, new Symbol("theta2"), new Symbol("theta3"))));
                    break;
                }
                case "4.0*pi SUBTRACT theta1": {
                    angles.add(new BinOp(Expr.Op.SUBTRACT, new BinOp(Expr.Op.MULT, new Real(4), new Symbol("pi")), new Symbol("theta1")));
                    break;
                }
                case "4.0*pi SUBTRACT theta1 PLUS theta2": {
                    angles.add(new BinOp(Expr.Op.SUBTRACT, new BinOp(Expr.Op.MULT, new Real(4), new Symbol("pi")), new BinOp(Expr.Op.ADD, new Symbol("theta1"), new Symbol("theta2"))));
                    break;
                }
                default: {
                    if (param.contains("pi")) {
                        angles.add(parsePiAngle(param));
                    } else {
                        double angleDouble = Double.parseDouble(param);
                        angles.add(new Real(angleDouble));
                    }
                }
            }
        }
    }

    public DirectedMultigraph<Node, Edge> qasmToDag(String qasm) {
        qasm = StringUtils.stripEnd(qasm, ";");
        DirectedMultigraph<Node, Edge> dag = new DirectedMultigraph<>(Edge.class);
        if (qasm.equals("")) {
            return dag;
        }
        Map<String, Node> qubitToLeaf = new HashMap<>();
        Map<String, Node> qubitNodes = new HashMap<>();
        String[] split = qasm.split("; ");
        for (String op : split) {
            String[] qubits = new String[3];
            if (op.contains("ccz")) {
                String[] split2 = op.split(" ", 2);
                String gate = split2[0];
                String[] split3 = split2[1].split(", ");
                qubits[0] = split3[0];
                qubits[1] = split3[1];
                qubits[2] = split3[2];

                Node gateNode = new Node(gate, Node.Type.GATE, qubits, null);
                dag.addVertex(gateNode);
                addEdges(dag, qubitToLeaf, qubitNodes, gateNode);
            } else if (op.contains("cx") || op.contains("cz")) {
                String[] split2 = op.split(" ", 2);
                String gate = split2[0];
                String[] split3 = split2[1].split(", ");
                qubits[0] = split3[0];
                qubits[1] = split3[1];

                Node gateNode = new Node(gate, Node.Type.GATE, qubits, null);
                dag.addVertex(gateNode);
                addEdges(dag, qubitToLeaf, qubitNodes, gateNode);
            } else if (op.contains("rxx")) {
                String gate = op.substring(0, op.indexOf(")")+1);
                String[] split3 = op.substring(op.indexOf(")")+2).split(", ");
                qubits[0] = split3[0];
                qubits[1] = split3[1];

                List<Expr> angles = null;
                if (gate.contains("(")) {
                    angles = new ArrayList<>();
                    parseAngles(gate, angles);
                    gate = getParamGate(gate);
                    if (allAnglesZero(angles)) {
                        continue;
                    }
                }

                Node gateNode = new Node(gate, Node.Type.GATE, qubits, angles);
                dag.addVertex(gateNode);
                addEdges(dag, qubitToLeaf, qubitNodes, gateNode);
            } else {
                String[] split2 = new String[]{op.substring(0, op.lastIndexOf(" ")), op.substring(op.lastIndexOf(" ") + 1)};
                String gate = split2[0];
                qubits[0] = split2[1];

                List<Expr> angles = null;
                if (gate.contains("(")) {
                    angles = new ArrayList<>();
                    parseAngles(gate, angles);
                    gate = getParamGate(gate);
                    if (allAnglesZero(angles) && !gate.equals("u2")) {
                        continue;
                    }
                }

                Node gateNode = new Node(gate, Node.Type.GATE, qubits, angles);
                dag.addVertex(gateNode);
                addEdges(dag, qubitToLeaf, qubitNodes, gateNode);
            }
        }

        for (String qubit : qubitToLeaf.keySet()) {
            Node qubitSink = new Node(qubit, Node.Type.QUBIT_SINK, null, null);
            dag.addVertex(qubitSink);
            dag.addEdge(qubitToLeaf.get(qubit), qubitSink, getEdge(qubitToLeaf.get(qubit), qubitSink, qubit));
        }
        return dag;
    }

    private boolean allAnglesZero(List<Expr> angles) {
        for (Expr angle : angles) {
            if (angle.toString().contains("theta")) {
                return false;
            }
            if (!isMult2PI(eval(angle))) {
                return false;
            }
        }
        return true;
    }

    public String dagToQasm(DirectedMultigraph<Node, Edge> dag) {
        TopologicalOrderIterator<Node, Edge> dagIter = new TopologicalOrderIterator<>(dag);

        StringBuilder qasm = new StringBuilder();
        dagIter.forEachRemaining((x) -> {if (x.isGate()) if (x.getAngles()==null || !allAnglesZero(x.getAngles()) || x.getId().equals("u2")) qasm.append(gateNodeToQasm(x).concat("; \n"));});

        String qasmf = qasm.toString();

        return qasmf;
    }

    private String gateNodeToQasm(Node node) {
        if (node.isCX()) {
            if (node.getId().equals("rxx")) {
                return String.format("%s(%s) %s, %s", node.getId(), node.getAngles().get(0), node.getQubits()[0], node.getQubits()[1]);
            }
            return String.format("%s %s, %s", node.getId(), node.getQubits()[0], node.getQubits()[1]);
        } else if (node.isCCZ()) {
            return String.format("%s %s, %s, %s", node.getId(), node.getQubits()[0], node.getQubits()[1], node.getQubits()[2]);
        } else if (node.getAngles() != null) {
            if (node.getAngles().size() == 1) {
                return String.format("%s(%s) %s", node.getId(), node.getAngles().get(0), node.getQubits()[0]);
            } else if (node.getAngles().size() == 2) {
                return String.format("%s(%s,%s) %s", node.getId(), node.getAngles().get(0), node.getAngles().get(1), node.getQubits()[0]);
            } else if (node.getAngles().size() == 3) {
                return String.format("%s(%s,%s,%s) %s", node.getId(), node.getAngles().get(0), node.getAngles().get(1), node.getAngles().get(2), node.getQubits()[0]);
            }
            throw new RuntimeException("angles");
        } else {
            return String.format("%s %s", node.getId(), node.getQubits()[0]);
        }
    }

    public void saveGraphImage(String filename, DirectedMultigraph<Node, Edge> dag) throws IOException {
        File imgFile = new File(filename);
        imgFile.createNewFile();
        JGraphXAdapter<Node, Edge> graphAdapter = new JGraphXAdapter<>(dag);
        mxIGraphLayout layout = new mxCircleLayout(graphAdapter);
        layout.execute(graphAdapter.getDefaultParent());

        BufferedImage image = mxCellRenderer.createBufferedImage(graphAdapter, null, 2, Color.WHITE, true, null);
        ImageIO.write(image, "PNG", imgFile);
    }

    private boolean matchOutgoing(DirectedMultigraph<Node, Edge> circuit,
                                  DirectedMultigraph<Node, Edge> pattern,
                                  Node circuitNode,
                                  Node patternNode,
                                  Map<Node, Node> patternToCirc,
                                  Map<Edge, Edge> patternToCircEdges,
                                  Map<String, Expr> angleMap,
                                  List<Node> succsToVisit) {
        for (Edge pattE : pattern.outgoingEdgesOf(patternNode)) {
            if (pattern.getEdgeTarget(pattE).isSinkQubit() ) {
                continue;
            }
            boolean foundMatch = false;
            if (circuit.outDegreeOf(circuitNode) != pattern.outDegreeOf(patternNode)) {
                return false;
            }

            for (Edge circE : circuit.outgoingEdgesOf(circuitNode)) {
                if (patternToCirc.containsKey(pattern.getEdgeTarget(pattE))) {
                    if (pattE.sameSourceTargetLabels(circE) && circuit.getEdgeTarget(circE) == patternToCirc.get(pattern.getEdgeTarget(pattE))) {
                        foundMatch = true;
                    }
                } else {
                    if (pattE.sameSourceTargetLabels(circE) && circuit.getEdgeTarget(circE).getId().equals(pattern.getEdgeTarget(pattE).getId())) {
                        if (pattern.getEdgeTarget(pattE).getAngles() != null) {
                            if (matchAngles(circuit.getEdgeTarget(circE), pattern.getEdgeTarget(pattE), angleMap)) {
                                patternToCirc.put(pattern.getEdgeTarget(pattE), circuit.getEdgeTarget(circE));
                                foundMatch = true;
                            }
                        } else {
                            patternToCirc.put(pattern.getEdgeTarget(pattE), circuit.getEdgeTarget(circE));
                            foundMatch = true;
                        }
                    }
                }
                if (foundMatch) {
                    patternToCircEdges.put(pattE, circE);
                    succsToVisit.add(pattern.getEdgeTarget(pattE));
                    break;
                }
            }

            if (!foundMatch) {
                return false;
            }
        }
        return true;
    }

    private List<Node> allCXAncs(DirectedMultigraph<Node, Edge> circuit, Node node) {
        List<Node> ancs = new ArrayList<>();

        List<Node> ancsToVisit = new ArrayList<>();
        ancsToVisit.addAll(Graphs.predecessorListOf(circuit, node));
        while (!ancsToVisit.isEmpty()) {
            Node anc = ancsToVisit.get(ancsToVisit.size()-1);
            ancsToVisit.remove(ancsToVisit.size()-1);
            if (!anc.isGate()) { continue; }

            if (anc.isCX()) {
                ancs.add(anc);
            }
            ancsToVisit.addAll(Graphs.predecessorListOf(circuit, anc));
        }

        return ancs;
    }

    private List<Node> allCXDecs(DirectedMultigraph<Node, Edge> circuit, Node node) {
        List<Node> decs = new ArrayList<>();

        List<Node> decsToVisit = new ArrayList<>();
        decsToVisit.addAll(Graphs.successorListOf(circuit, node));
        while (!decsToVisit.isEmpty()) {
            Node dec = decsToVisit.get(decsToVisit.size()-1);
            decsToVisit.remove(decsToVisit.size()-1);
            if (!dec.isGate()) { continue; }

            if (dec.isCX()) {
                decs.add(dec);
            }
            decsToVisit.addAll(Graphs.successorListOf(circuit, dec));
        }

        return decs;
    }

    private String getCommonQubit(Node n1, Node n2) {
        if (n1.getQubits()[0].equals(n2.getQubits()[0]) || n1.getQubits()[0].equals(n2.getQubits()[1])) {
            return n1.getQubits()[0];
        } else if (n1.getQubits()[1].equals(n2.getQubits()[1]) || n1.getQubits()[1].equals(n2.getQubits()[0])) {
            return n1.getQubits()[1];
        }
        return null;
    }

    private boolean sameLCA(DirectedMultigraph<Node, Edge> circuit,
                            DirectedMultigraph<Node, Edge> pattern,
                            Node circuitNode,
                            Node patternNode,
                            Node circuitCXAnc,
                            Node pattCXAnc) {
        NaiveLCAFinder<Node, Edge> lcaP = new NaiveLCAFinder<>(pattern);
        String commonPattQubit = getCommonQubit(pattCXAnc, patternNode);
        String commonCircQubit = getCommonQubit(circuitCXAnc, circuitNode);

        for (Edge e : pattern.incomingEdgesOf(patternNode)) {
            if (!e.getQubit().equals(commonPattQubit)) {
                if (pattCXAnc != lcaP.getLCA(pattCXAnc, pattern.getEdgeSource(e))) {
                    for (Edge e2 : circuit.incomingEdgesOf(circuitNode)) {
                        if (!e2.getQubit().equals(commonCircQubit)) {
                            NaiveLCAFinder<Node, Edge> lcaC = new NaiveLCAFinder<>(circuit);
                            if (circuitCXAnc != lcaC.getLCA(circuitCXAnc, circuit.getEdgeSource(e2))) {
                                return true;
                            }
                        }
                    }
                } else {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean checkLCA(DirectedMultigraph<Node, Edge> circuit,
                             DirectedMultigraph<Node, Edge> pattern,
                             Node circuitNode,
                             Node patternNode,
                             Map<Node, Node> patternToCirc) {
        if (patternNode.isCX()) {
            for (Node cxAnc : allCXAncs(pattern, patternNode)) {
                if (!sameQubits(cxAnc, patternNode)) {
                    if (patternToCirc.containsKey(cxAnc)) {
                        if (!sameLCA(circuit, pattern, circuitNode, patternNode, patternToCirc.get(cxAnc), cxAnc)) {
                            return false;
                        }
                    }
                }
            }
            for (Node cxDec : allCXDecs(pattern, patternNode)) {
                if (!sameQubits(cxDec, patternNode)) {
                    if (patternToCirc.containsKey(cxDec)) {
                        if (!sameLCA(circuit, pattern, patternToCirc.get(cxDec), cxDec, circuitNode, patternNode)) {
                            return false;
                        }
                    }
                }
            }
        }
        return true;
    }

    private boolean matchIncoming(DirectedMultigraph<Node, Edge> circuit,
                                  DirectedMultigraph<Node, Edge> pattern,
                                  Node circuitNode,
                                  Node patternNode,
                                  Map<Node, Node> patternToCirc,
                                  Map<Edge, Edge> patternToCircEdges,
                                  Map<String, Expr> angleMap,
                                  List<Node> ancsToVisit) {
        for (Edge pattE : pattern.incomingEdgesOf(patternNode)) {
            if (pattern.getEdgeSource(pattE).isSourceQubit() ) {
                continue;
            }
            boolean foundMatch = false;
            if (circuit.inDegreeOf(circuitNode) != pattern.inDegreeOf(patternNode)) {
                return false;
            }

            for (Edge circE : circuit.incomingEdgesOf(circuitNode)) {
                if (patternToCirc.containsKey(pattern.getEdgeSource(pattE))) {
                    if (pattE.sameSourceTargetLabels(circE) && circuit.getEdgeSource(circE) == patternToCirc.get(pattern.getEdgeSource(pattE))) {
                        if (checkLCA(circuit, pattern, circuitNode, patternNode, patternToCirc)) {
                            foundMatch = true;
                        }
                    }
                } else {
                    if (pattE.sameSourceTargetLabels(circE) && circuit.getEdgeSource(circE).getId().equals(pattern.getEdgeSource(pattE).getId())) {
                        if (checkLCA(circuit, pattern, circuitNode, patternNode, patternToCirc)) {
                            if (pattern.getEdgeSource(pattE).getAngles() != null) {
                                if (matchAngles(circuit.getEdgeSource(circE), pattern.getEdgeSource(pattE), angleMap)) {
                                    patternToCirc.put(pattern.getEdgeSource(pattE), circuit.getEdgeSource(circE));
                                    foundMatch = true;
                                }
                            } else {
                                patternToCirc.put(pattern.getEdgeSource(pattE), circuit.getEdgeSource(circE));
                                foundMatch = true;
                            }
                        }
                    }
                }
                if (foundMatch) {
                    patternToCircEdges.put(pattE, circE);
                    ancsToVisit.add(pattern.getEdgeSource(pattE));
                    break;
                }
            }

            if (!foundMatch) {
                return false;
            }
        }
        return true;
    }

    private boolean sameQubits(Node n1, Node n2) {
        return Arrays.equals(n1.getQubits(), n2.getQubits()) || (n1.getQubits()[0].equals(n2.getQubits()[1]) && n1.getQubits()[1].equals(n2.getQubits()[0]));
    }

    private boolean sameAngle(Expr angle1, Expr angle2) {
        return (eval(angle1) % (4*Math.PI)) == (eval(angle2) % (4*Math.PI));
    }

    private static double evalBinOp(BinOp bo) {
        double v1 = eval(bo.getE1());
        double v2 = eval(bo.getE2());
        switch (bo.getOp()) {
            case ADD: return v1+(v2);
            case SUBTRACT: return v1-(v2);
            case MULT: return v1*(v2);
            case DIV: return v1 /(v2);
            default: throw new RuntimeException(String.format("unimplemented BinOp: %s", bo.getOp()));
        }
    }

    private static double evalUnOp(UnOp uo) {
        double v = eval(uo.getE());
        switch (uo.getOp()) {
            case MINUS: return -v;
            default: throw new RuntimeException(String.format("unimplemented UnOp: %s", uo.getOp()));
        }
    }

    public static Double eval(Expr e) {
        switch (e) {
            case Real r: return r.getNumber();
            case BinOp bo: return evalBinOp(bo);
            case Symbol s: {
                if (s.getSymbol().equals("pi")) {
                    return Math.PI;
                } else {
                    throw new RuntimeException(String.format("unimplemented symbol: %s", s));
                }
            }
            case UnOp uo: return evalUnOp(uo);
            default: assert false; return null; // stupid hack to make the compiler happy ugh
        }
    }

    private String replaceAngles(String replace, Map<String, Expr> angleMap) {
        if (replace.contains("theta1 PLUS theta2 PLUS theta3")) {
            replace=replace.replace("theta1 PLUS theta2 PLUS theta3", String.valueOf(eval(angleMap.get("theta1"))+eval(angleMap.get("theta2")))+eval(angleMap.get("theta3")));
        }
        if (replace.contains("4.0*pi SUBTRACT theta1 PLUS theta2")) {
            replace=replace.replace("4.0*pi SUBTRACT theta1 PLUS theta2", String.valueOf((4*Math.PI)-eval(angleMap.get("theta1"))-eval(angleMap.get("theta2"))));
        }
        if (replace.contains("theta1 PLUS theta2")) {
            replace=replace.replace("theta1 PLUS theta2", String.valueOf(eval(angleMap.get("theta1"))+eval(angleMap.get("theta2"))));
        }
        if (replace.contains("4.0*pi SUBTRACT theta1")) {
            replace=replace.replace("4.0*pi SUBTRACT theta1", String.valueOf((4*Math.PI)-eval(angleMap.get("theta1"))));
        }
        if (replace.contains("theta1")) {
            replace=replace.replace("theta1", String.valueOf(eval(angleMap.get("theta1"))));
        }
        if (replace.contains("theta2")) {
            replace=replace.replace("theta2", String.valueOf(eval(angleMap.get("theta2"))));
        }
        if (replace.contains("theta3")) {
            replace=replace.replace("theta3", String.valueOf(eval(angleMap.get("theta3"))));
        }

        return replace;
    }

    public DirectedMultigraph<Node, Edge> find(DirectedMultigraph<Node, Edge> circuit, DirectedMultigraph<Node, Edge> pattern, String replace) {
        List<Node> roots = getCircuitRoots(pattern);
        Node start = roots.get(0);
        Map<Node, Node> patternToCirc = new HashMap<>();
        Map<Edge, Edge> patternToCircEdges = new HashMap<>();
        Map<String, Expr> angleMap = new HashMap<>();
        Set<Node> matched = new HashSet<>();
        Set<Node> replaced = new HashSet<>();
        List<Map<Node, Node>> matches = new ArrayList<>();

        DirectedMultigraph<Node, Edge> copy = null;

        for (Node circN : circuit.vertexSet()) {
            patternToCirc.clear();
            patternToCircEdges.clear();
            angleMap.clear();
            if (matched.contains(circN) || replaced.contains(circN)) {
                continue;
            }
            if (circN.isGate() && circN.getId().equals(start.getId())) {
                patternToCirc.put(start, circN);
                if (start.getAngles() != null) {
                    if (!matchAngles(circN, start, angleMap)) {
                        continue;
                    }
                }
                List<Node> succsToVisit = new ArrayList<>();
                List<Node> ancsToVisit = new ArrayList<>();
                Set<Node> seen = new HashSet<>();

                if (!matchOutgoing(circuit, pattern, circN, start, patternToCirc, patternToCircEdges, angleMap, succsToVisit)) {
                    continue;
                }
                if (!matchIncoming(circuit, pattern, circN, start, patternToCirc, patternToCircEdges, angleMap, succsToVisit)) {
                    continue;
                }
                seen.add(start);

                boolean match = true;
                while (!succsToVisit.isEmpty() || !ancsToVisit.isEmpty()) {
                    while (!succsToVisit.isEmpty()) {
                        Node succ = succsToVisit.get(0);
                        succsToVisit.remove(0);

                        if (seen.contains(succ)) {
                            continue;
                        }

                        if (matched.contains(patternToCirc.get(succ)) || replaced.contains(patternToCirc.get(succ))) {
                            match = false;
                            break;
                        }

                        if (!matchOutgoing(circuit, pattern, patternToCirc.get(succ), succ, patternToCirc, patternToCircEdges, angleMap, succsToVisit)) {
                            match = false;
                            break;
                        }
                        if (!matchIncoming(circuit, pattern, patternToCirc.get(succ), succ, patternToCirc, patternToCircEdges, angleMap, ancsToVisit)) {
                            match = false;
                            break;
                        }
                        seen.add(succ);
                    }
                    if (!match) {
                        break;
                    }

                    while (!ancsToVisit.isEmpty()) {
                        Node anc = ancsToVisit.get(0);
                        ancsToVisit.remove(0);

                        if (seen.contains(anc)) {
                            continue;
                        }

                        if (matched.contains(patternToCirc.get(anc)) || replaced.contains(patternToCirc.get(anc))) {
                            match = false;
                            break;
                        }

                        if (!matchOutgoing(circuit, pattern, patternToCirc.get(anc), anc, patternToCirc, patternToCircEdges, angleMap, succsToVisit)) {
                            match = false;
                            break;
                        }
                        if (!matchIncoming(circuit, pattern, patternToCirc.get(anc), anc, patternToCirc, patternToCircEdges, angleMap, ancsToVisit)) {
                            match = false;
                            break;
                        }
                        seen.add(anc);
                    }
                    if (!match) {
                        break;
                    }
                }
                if (!match) {
                    continue;
                }
                if (patternToCirc.size() == circuitSize(pattern)) {
                    matched.addAll(patternToCirc.values());
                    matches.add(new HashMap<>(patternToCirc));

                    Map<String, String> patternToCircuitQubit = patternToCircuitQubit(patternToCirc);
                    if (new HashSet<>(patternToCircuitQubit.values()).size() != patternToCircuitQubit.values().size()) {
                        continue;
                    }

                    if (copy == null) {
                        copy = (DirectedMultigraph<Node, Edge>) circuit.clone();
                    }

                    String[] searchList = new String[patternToCircuitQubit.size()*2];
                    String[] replaceList = new String[patternToCircuitQubit.size()*2];
                    int i = 0;
                    for (String key : patternToCircuitQubit.keySet()) {
                        searchList[i] = key+",";
                        replaceList[i] = patternToCircuitQubit.get(key)+",";
                        i++;
                        searchList[i] = key+";";
                        replaceList[i] = patternToCircuitQubit.get(key)+";";
                        i++;
                    }
                    String replaceAfterSubst = StringUtils.replaceEach(replace, searchList, replaceList);
                    replaceAfterSubst = replaceAngles(replaceAfterSubst, angleMap);

                    DirectedMultigraph<Node, Edge> replaceDag = qasmToDag(replaceAfterSubst);
                    replaced.addAll(replaceDag.vertexSet());

                    replace(copy, pattern, replaceDag, patternToCirc, patternToCircuitQubit);
                    circuit = copy;
                }
            }
        }
        return copy;
    }

    private int circuitSize(DirectedMultigraph<Node, Edge> circuit) {
        int size = 0;
        for (Node n : circuit.vertexSet()) {
            if (n.isGate()) {
                size++;
            }
        }
        return size;
    }

    private int circuitSize2q(DirectedMultigraph<Node, Edge> circuit) {
        int size = 0;
        for (Node n : circuit.vertexSet()) {
            if (n.isGate() && n.isCX()) {
                size++;
            }
        }
        return size;
    }

    public List<Node> getCircuitRoots(DirectedMultigraph<Node, Edge> graph) {
        List<Node> roots = new ArrayList<>();
        for (Node n : graph.vertexSet()) {
            if (n.isSourceQubit()) {
                roots.addAll(Graphs.successorListOf(graph, n));
            }
        }
        return roots;
    }

    public Map<String, Node> getRoots(DirectedMultigraph<Node, Edge> graph) {
        Map<String, Node> roots = new HashMap<>();
        for (Node n : graph.vertexSet()) {
            if (n.isSourceQubit()) {
                roots.put(n.getId(), Graphs.successorListOf(graph, n).get(0));
            }
        }
        return roots;
    }

    public Map<String, Node> getLeaves(DirectedMultigraph<Node, Edge> graph) {
        Map<String, Node> leaves = new HashMap<>();
        for (Node n : graph.vertexSet()) {
            if (n.isSinkQubit()) {
                leaves.put(n.getId(), Graphs.predecessorListOf(graph, n).get(0));
            }
        }
        return leaves;
    }

    public Map<String, String> patternToCircuitQubit(Map<Node, Node> patternToCirc) {
        Map<String, String> result = new HashMap<>();
        for (Node patternNode : patternToCirc.keySet()) {
            result.put(patternNode.getQubits()[0], patternToCirc.get(patternNode).getQubits()[0]);
            if (patternNode.isCX()) {
                result.put(patternNode.getQubits()[1], patternToCirc.get(patternNode).getQubits()[1]);
            } else if (patternNode.isCCZ()) {
                // TODO improve
                result.put(patternNode.getQubits()[1], patternToCirc.get(patternNode).getQubits()[1]);
                result.put(patternNode.getQubits()[2], patternToCirc.get(patternNode).getQubits()[2]);
            }
        }
        return result;
    }

    public void replace(DirectedMultigraph<Node, Edge> circuit,
                        DirectedMultigraph<Node, Edge> pattern,
                        DirectedMultigraph<Node, Edge> replace,
                        Map<Node, Node> patternToCirc,
                        Map<String, String> patternToCircuitQubit) {
        Map<String, Node> patternRoots = getRoots(pattern);
        Map<String, Node> patternLeaves = getLeaves(pattern);

        Map<String, Node> replaceRoots = getRoots(replace);
        Map<String, Node> replaceLeaves = getLeaves(replace);

        Map<String, Node> ancPatternRoots = new HashMap<>();
        for (String qubit : patternRoots.keySet()) {
            String circQubit = patternToCircuitQubit.get(qubit);
            Node match = patternToCirc.get(patternRoots.get(qubit));
            for (Edge e : circuit.incomingEdgesOf(match)) {
                if (e.getQubit().equals(circQubit)) {
                    ancPatternRoots.put(circQubit, circuit.getEdgeSource(e));
                }

            }
        }

        Map<String, Node> decPatternLeaves = new HashMap<>();
        for (String qubit : patternLeaves.keySet()) {
            String circQubit = patternToCircuitQubit.get(qubit);
            Node match = patternToCirc.get(patternLeaves.get(qubit));
            for (Edge e : circuit.outgoingEdgesOf(match)) {
                if (e.getQubit().equals(circQubit)) {
                    decPatternLeaves.put(circQubit, circuit.getEdgeTarget(e));
                }
            }
        }

        Set<Node> toRemove = new HashSet<>();
        for (Node n : replace.vertexSet()) {
            if (n.isQubit()) {
                toRemove.add(n);
            }
        }
        replace.removeAllVertices(toRemove);
        Graphs.addGraph(circuit, replace);

        for (Node n : pattern.vertexSet()) {
            circuit.removeVertex(patternToCirc.get(n));
        }

        for (String qubit : ancPatternRoots.keySet()) {
            if (replaceRoots.containsKey(qubit)) {
                circuit.addEdge(ancPatternRoots.get(qubit), replaceRoots.get(qubit), getEdge(ancPatternRoots.get(qubit), replaceRoots.get(qubit), qubit));
            } else {
                circuit.addEdge(ancPatternRoots.get(qubit), decPatternLeaves.get(qubit), getEdge(ancPatternRoots.get(qubit), decPatternLeaves.get(qubit), qubit));
            }
        }

        for (String qubit : replaceLeaves.keySet()) {
            circuit.addEdge(replaceLeaves.get(qubit), decPatternLeaves.get(qubit), getEdge(replaceLeaves.get(qubit), decPatternLeaves.get(qubit), qubit));
        }
    }

    private Edge getEdge(Node source, Node target, String qubit) {
        Edge.Label sourceLabel = Edge.Label.NONE;
        Edge.Label targetLabel = Edge.Label.NONE;
        if (source.isCX()) {
            if (qubit.equals(source.getQubits()[0])) {
                sourceLabel = Edge.Label.CONTROL;
            } else {
                sourceLabel = Edge.Label.TARGET;
            }
        } else if (source.isCCZ()) {
            if (qubit.equals(source.getQubits()[0])) {
                sourceLabel = Edge.Label.CONTROL;
            } else if (qubit.equals(source.getQubits()[1])) {
                sourceLabel = Edge.Label.CONTROL2;
            } else {
                sourceLabel = Edge.Label.TARGET;
            }
        }
        if (target.isCX()) {
            if (qubit.equals(target.getQubits()[0])) {
                targetLabel = Edge.Label.CONTROL;
            } else {
                targetLabel = Edge.Label.TARGET;
            }
        } else if (target.isCCZ()) {
            if (qubit.equals(target.getQubits()[0])) {
                targetLabel = Edge.Label.CONTROL;
            } else if (qubit.equals(target.getQubits()[1])) {
                targetLabel = Edge.Label.CONTROL2;
            } else {
                targetLabel = Edge.Label.TARGET;
            }
        }

        return new Edge(sourceLabel, targetLabel, qubit);
    }

    public DirectedMultigraph<Node, Edge> applyRule(DirectedMultigraph<Node, Edge> circuit, String lhs, DirectedMultigraph<Node, Edge> rhs) {
        DirectedMultigraph<Node, Edge> pattern = rhs;
        var result = find(circuit, pattern, lhs);
        if (result == null) {
            return circuit;
        }
        return result;
    }

    public DirectedMultigraph<Node, Edge> applySymbRule(DirectedMultigraph<Node, Edge> circuit,
                                                        String findBefore, String findAfter,
                                                        String replaceBefore, String replaceAfter,
                                                        List<Map<boolean[], boolean[]>> constraints,
                                                        int maxSymbQubits,
                                                        int maxSymbSize) {
        DirectedMultigraph<Node, Edge> patternBefore = qasmToDag(findBefore);
        DirectedMultigraph<Node, Edge> patternAfter = qasmToDag(findAfter);

        Map<String, Expr> angleMap = new HashMap<>();
        List<Node> symb = findSymb(circuit, patternBefore, patternAfter, constraints, angleMap, maxSymbQubits, maxSymbSize);
        if (symb != null) {
            Map<String, String> qubitMap = getMap(symb, findBefore, findAfter);
            String[] searchList = new String[qubitMap.size()*2];
            String[] replaceList = new String[qubitMap.size()*2];
            int i = 0;
            for (String key : qubitMap.keySet()) {
                replaceList[i] = key+",";
                searchList[i] = qubitMap.get(key)+",";
                i++;
                replaceList[i] = key+";";
                searchList[i] = qubitMap.get(key)+";";
                i++;
            }

            replaceBefore = StringUtils.replaceEach(replaceBefore, searchList, replaceList);
            replaceAfter = StringUtils.replaceEach(replaceAfter, searchList, replaceList);

            String newLHS = replaceBefore + " " + getQasm(symb.subList(StringUtils.countMatches(findBefore, ";"),symb.size()-StringUtils.countMatches(findAfter, ";")   )) + " " + replaceAfter;
            newLHS = newLHS.replace("  ", " ");
            newLHS = replaceAngles(newLHS, angleMap);

            String newRHS = getQasm(symb);
//            System.out.println(dagToQasm(circuit));
//            System.out.println(newLHS.trim() + " | " + newRHS.trim());
            return applyRule(circuit, newLHS.trim(), qasmToDag(newRHS.trim()));
        }
        return circuit;
    }

    private Map<String, String> getMap(List<Node> symb, String findBefore, String findAfter) {
        Map<String, String> map = new HashMap<>();
        Node b = symb.get(0);
        Node a = symb.get(symb.size()-1);

        map.put(b.getQubits()[0], findBefore.substring(findBefore.indexOf("q"), findBefore.indexOf(";")));
        map.put(a.getQubits()[0], findAfter.substring(findAfter.indexOf("q"), findAfter.indexOf(";")));
        return map;
    }

    private String getQasm(List<Node> symb) {
        String qasm = "";
        for (Node n : symb) {
            qasm = qasm + gateNodeToQasm(n) + "; ";
        }
        return qasm.trim();
    }

    private Circuit opsToCircuit(List<Node> ops) {
        Expr phi = new Real(1);
        TreeMap<String, Expr> f = new TreeMap<>();
        PathSum s = new PathSum(phi, f);
        ArrayList<PathSum> pathSum = new ArrayList<>(Arrays.asList(s));
        Circuit c = new Circuit(new ArrayList<>(), pathSum, new ArrayList<>());

        for (Node op : ops) {
            switch (op.getId()) {
                case "h": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    PathSum.h(c, op.getQubits()[0]);
                    break;
                }
                case "sx": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    PathSum.sx(c, op.getQubits()[0]);
                    break;
                }
                case "t": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    PathSum.rz(c, op.getQubits()[0], new BinOp(Expr.Op.DIV, new Symbol("pi"), new Real(4)));
                    break;
                }
                case "tdg": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    PathSum.rz(c, op.getQubits()[0], new BinOp(Expr.Op.DIV, new BinOp(Expr.Op.MULT, new Real(7), new Symbol("pi")), new Real(4)));
                    break;
                }
                case "s": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    PathSum.rz(c, op.getQubits()[0], new BinOp(Expr.Op.DIV, new Symbol("pi"), new Real(2)));
                    break;
                }
                case "sdg": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    PathSum.rz(c, op.getQubits()[0], new BinOp(Expr.Op.DIV, new BinOp(Expr.Op.MULT, new Real(3), new Symbol("pi")), new Real(2)));
                    break;
                }
                case "rz": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    PathSum.rz(c, op.getQubits()[0], op.getAngles().get(0));
                    break;
                }
                case "rx": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    PathSum.rx(c, op.getQubits()[0], op.getAngles().get(0));
                    break;
                }
                case "ry": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    PathSum.ry(c, op.getQubits()[0], op.getAngles().get(0));
                    break;
                }
                case "rxx": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    if (!c.hasQubit(op.getQubits()[1])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[1], new Var(op.getQubits()[1]));
                        }
                    }
                    PathSum.rxx(c, op.getQubits()[0], op.getQubits()[1], op.getAngles().get(0));
                    break;
                }
                case "u1": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    PathSum.u1(c, op.getQubits()[0], op.getAngles().get(0));
                    break;
                }
                case "u2": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    PathSum.u2(c, op.getQubits()[0], op.getAngles().get(0), op.getAngles().get(1));
                    break;
                }
                case "u3": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    PathSum.u3(c, op.getQubits()[0], op.getAngles().get(0), op.getAngles().get(1), op.getAngles().get(2));
                    break;
                }
                case "x": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    PathSum.x(c, op.getQubits()[0]);
                    break;
                }
                case "z": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    PathSum.rz(c, op.getQubits()[0], new Symbol("pi"));
                    break;
                }
                case "cx": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    if (!c.hasQubit(op.getQubits()[1])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[1], new Var(op.getQubits()[1]));
                        }
                    }
                    PathSum.cx(c, op.getQubits()[0], op.getQubits()[1]);
                    break;
                }
                case "cz": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    if (!c.hasQubit(op.getQubits()[1])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[1], new Var(op.getQubits()[1]));
                        }
                    }
                    PathSum.cz(c, op.getQubits()[0], op.getQubits()[1]);
                    break;
                }
                case "ccz": {
                    if (!c.hasQubit(op.getQubits()[0])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[0], new Var(op.getQubits()[0]));
                        }
                    }
                    if (!c.hasQubit(op.getQubits()[1])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[1], new Var(op.getQubits()[1]));
                        }
                    }
                    if (!c.hasQubit(op.getQubits()[2])) {
                        for (PathSum symb : c.getPathSum()) {
                            symb.getF().put(op.getQubits()[2], new Var(op.getQubits()[2]));
                        }
                    }
                    PathSum.cx(c, op.getQubits()[1], op.getQubits()[2]);
                    PathSum.rz(c, op.getQubits()[2], new BinOp(Expr.Op.DIV, new BinOp(Expr.Op.MULT, new Real(7), new Symbol("pi")), new Real(4)));
                    PathSum.cx(c, op.getQubits()[0], op.getQubits()[2]);
                    PathSum.rz(c, op.getQubits()[2], new BinOp(Expr.Op.DIV, new Symbol("pi"), new Real(4)));
                    PathSum.cx(c, op.getQubits()[1], op.getQubits()[2]);
                    PathSum.rz(c, op.getQubits()[2], new BinOp(Expr.Op.DIV, new BinOp(Expr.Op.MULT, new Real(7), new Symbol("pi")), new Real(4)));
                    PathSum.cx(c, op.getQubits()[0], op.getQubits()[2]);
                    PathSum.cx(c, op.getQubits()[0], op.getQubits()[1]);
                    PathSum.rz(c, op.getQubits()[1], new BinOp(Expr.Op.DIV, new BinOp(Expr.Op.MULT, new Real(7), new Symbol("pi")), new Real(4)));
                    PathSum.cx(c, op.getQubits()[0], op.getQubits()[1]);
                    PathSum.rz(c, op.getQubits()[0], new BinOp(Expr.Op.DIV, new Symbol("pi"), new Real(4)));
                    PathSum.rz(c, op.getQubits()[1], new BinOp(Expr.Op.DIV, new Symbol("pi"), new Real(4)));
                    PathSum.rz(c, op.getQubits()[2], new BinOp(Expr.Op.DIV, new Symbol("pi"), new Real(4)));
                    break;
                }
                default: throw new RuntimeException(String.format("unimplemented gate: %s", op.getId()));
            }
        }

        return c;
    }

    public List<List<Node>> topoSort(DirectedMultigraph<Node, Edge> circuit) {
//        dagToQasm(circuit); // useful for sanity check when debugging
        List<List<Node>> layers = new ArrayList<>();
        Set<Node> added = new HashSet<>();
        Set<Node> vertices = new HashSet<>(circuit.vertexSet());

        while (added.size() != circuit.vertexSet().size()) {
            List<Node> verticesInLayer = new ArrayList<>();
            for (Node n : vertices) {
                List<Node> preds = Graphs.predecessorListOf(circuit, n);
                if (added.containsAll(preds)) {
                    verticesInLayer.add(n);
                }
            }
            vertices.removeAll(verticesInLayer);
            layers.add(verticesInLayer);
            added.addAll(verticesInLayer);
        }

        return layers;
    }

    private boolean matchAngles(Node circN, Node patternN, Map<String, Expr> angleMap) {
        Map<String, Expr> tempAngleMap = new HashMap<>();
        tempAngleMap.putAll(angleMap);
        boolean matchAngles = true;
        int i = 0;
        for (Expr angle : patternN.getAngles()) {
            String key = angle.toString();
            if (key.contains("theta")) {
                if (tempAngleMap.containsKey(key)) {
                    if (!sameAngle(tempAngleMap.get(key), circN.getAngles().get(i))) {
                        matchAngles = false;
                        break;
                    }
                } else {
                    tempAngleMap.put(key, circN.getAngles().get(i));
                }
            } else {
                if (!sameAngle(angle, circN.getAngles().get(i))) {
                    matchAngles = false;
                    break;
                }
            }
            i++;
        }
        if (matchAngles) {
            angleMap.clear();
            angleMap.putAll(tempAngleMap);
            return true;
        } else {
            return false;
        }
    }

    public List<Node> findSymb(DirectedMultigraph<Node, Edge> circuit,
                               DirectedMultigraph<Node, Edge> patternBefore,
                               DirectedMultigraph<Node, Edge> patternAfter,
                               List<Map<boolean[], boolean[]>> constraints,
                               Map<String, Expr> angleMap,
                               int maxSymbQubits,
                               int maxSymbSize) {
        List<Node> beforeRoots = getCircuitRoots(patternBefore);
        Node patternBeforeStart = beforeRoots.get(0);
        List<Node> afterRoots = getCircuitRoots(patternAfter);
        Node patternAfterStart = afterRoots.get(0);
        boolean sameQubit = Arrays.equals(patternBeforeStart.getQubits(), patternAfterStart.getQubits());

        List<List<Node>> circuitTopo = topoSort(circuit);

        for (int i = 0; i < circuitTopo.size(); i++) {
            for (Node circN : circuitTopo.get(i)) {
                angleMap.clear();
                if (circN.isGate() && circN.getId().equals(patternBeforeStart.getId())) {
                    if (patternBeforeStart.getAngles() != null) {
                        if (!matchAngles(circN, patternBeforeStart, angleMap)) {
                            continue;
                        }
                    }
                    Node next = Graphs.successorListOf(patternBefore, patternBeforeStart).get(0);
                    int s = 1;
                    boolean foundMatchOuter = true;
                    while (!next.isSinkQubit()) {
                        boolean foundMatchInner = false;
                        for (Node circN3 : circuitTopo.get(i+s)) {
                            if (circN3.isGate() && circN3.getId().equals(next.getId()) && Arrays.equals(circN.getQubits(), circN3.getQubits())) {
                                if (next.getAngles() != null) {
                                    if (matchAngles(circN3, next, angleMap)) {
                                        foundMatchInner = true;
                                        break;
                                    }
                                } else {
                                    foundMatchInner = true;
                                    break;
                                }
                            }
                        }
                        if (!foundMatchInner) {
                            foundMatchOuter = false;
                            break;
                        }
                        next = Graphs.successorListOf(patternBefore, next).get(0);
                        s++;
                    }
                    if (!foundMatchOuter) {
                        continue;
                    }

                    Set<String> blockedQubits = new HashSet<>();
                    Set<String> trackedQubits = new HashSet<>();
                    List<Node> symb = new ArrayList<>();
                    List<Node> symbToReplace = new ArrayList<>();
                    symbToReplace.add(circN);
                    next = Graphs.successorListOf(patternBefore, patternBeforeStart).get(0);
                    Node circNext = Graphs.successorListOf(circuit, circN).get(0);
                    while (!next.isSinkQubit()) {
                        symbToReplace.add(circNext);
                        circNext = Graphs.successorListOf(circuit, circNext).get(0);
                        next = Graphs.successorListOf(patternBefore, next).get(0);
                    }
                    trackedQubits.add(circN.getQubits()[0]);
                    for (int j = i + s; j < circuitTopo.size(); j++) {
                        if (trackedQubits.size() > maxSymbQubits || symb.size() > maxSymbSize) {
                            break;
                        }
                        for (Node circN2 : circuitTopo.get(j)) {
                            if (!circN2.isGate()) { continue; }
                            if (trackedQubits.contains(circN2.getQubits()[0]) || trackedQubits.contains(circN2.getQubits()[1])) {
                                if (circN2.getQubits()[0] != null) { trackedQubits.add(circN2.getQubits()[0]); }
                                if (circN2.getQubits()[1] != null) { trackedQubits.add(circN2.getQubits()[1]); }

                                if (trackedQubits.size() > maxSymbQubits || symb.size() > maxSymbSize) {
                                    break;
                                }

                                boolean match = false;
                                if (sameQubit) {
                                    if (!blockedQubits.contains(circN2.getQubits()[0]) && Arrays.equals(circN.getQubits(), circN2.getQubits()) && circN2.getId().equals(patternAfterStart.getId())) {
                                        if (patternAfterStart.getAngles() != null) {
                                            if (matchAngles(circN2, patternAfterStart, angleMap)) {
                                                Node nextA = Graphs.successorListOf(patternAfter, patternAfterStart).get(0);
                                                int t = 1;
                                                boolean foundMatchOuterA = true;
                                                while (!nextA.isSinkQubit()) {
                                                    boolean foundMatchInnerA = false;
                                                    for (Node circN4 : circuitTopo.get(j+t)) {
                                                        if (circN4.isGate() && circN4.getId().equals(nextA.getId()) && Arrays.equals(circN4.getQubits(), circN2.getQubits())) {
                                                            if (nextA.getAngles() != null) {
                                                                if (matchAngles(circN4, nextA, angleMap)) {
                                                                    foundMatchInnerA = true;
                                                                    break;
                                                                }
                                                            } else {
                                                                foundMatchInnerA = true;
                                                                break;
                                                            }
                                                        }
                                                    }
                                                    if (!foundMatchInnerA) {
                                                        foundMatchOuterA = false;
                                                        break;
                                                    }
                                                    nextA = Graphs.successorListOf(patternAfter, nextA).get(0);
                                                    t++;
                                                }
                                                if (foundMatchOuterA) {
                                                    match = true;
                                                }
                                            }
                                        } else {
                                            Node nextA = Graphs.successorListOf(patternAfter, patternAfterStart).get(0);
                                            int t = 1;
                                            boolean foundMatchOuterA = true;
                                            while (!nextA.isSinkQubit()) {
                                                boolean foundMatchInnerA = false;
                                                for (Node circN4 : circuitTopo.get(j+t)) {
                                                    if (circN4.isGate() && circN4.getId().equals(nextA.getId()) && Arrays.equals(circN4.getQubits(), circN2.getQubits())) {
                                                        if (nextA.getAngles() != null) {
                                                            if (matchAngles(circN4, nextA, angleMap)) {
                                                                foundMatchInnerA = true;
                                                                break;
                                                            }
                                                        } else {
                                                            foundMatchInnerA = true;
                                                            break;
                                                        }
                                                    }
                                                }
                                                if (!foundMatchInnerA) {
                                                    foundMatchOuterA = false;
                                                    break;
                                                }
                                                nextA = Graphs.successorListOf(patternAfter, nextA).get(0);
                                                t++;
                                            }
                                            if (foundMatchOuterA) {
                                                match = true;
                                            }
                                        }
                                    }
                                } else {
                                    if (!blockedQubits.contains(circN2.getQubits()[0]) && !Arrays.equals(circN.getQubits(), circN2.getQubits()) && circN2.getId().equals(patternAfterStart.getId())) {
                                        if (patternAfterStart.getAngles() != null) {
                                            if (matchAngles(circN2, patternAfterStart, angleMap)) {
                                                Node nextA = Graphs.successorListOf(patternAfter, patternAfterStart).get(0);
                                                int t = 1;
                                                boolean foundMatchOuterA = true;
                                                while (!nextA.isSinkQubit()) {
                                                    boolean foundMatchInnerA = false;
                                                    for (Node circN4 : circuitTopo.get(j+t)) {
                                                        if (circN4.isGate() && circN4.getId().equals(nextA.getId()) && Arrays.equals(circN4.getQubits(), circN2.getQubits())) {
                                                            if (nextA.getAngles() != null) {
                                                                if (matchAngles(circN4, nextA, angleMap)) {
                                                                    foundMatchInnerA = true;
                                                                    break;
                                                                }
                                                            } else {
                                                                foundMatchInnerA = true;
                                                                break;
                                                            }
                                                        }
                                                    }
                                                    if (!foundMatchInnerA) {
                                                        foundMatchOuterA = false;
                                                        break;
                                                    }
                                                    nextA = Graphs.successorListOf(patternAfter, nextA).get(0);
                                                    t++;
                                                }
                                                if (foundMatchOuterA) {
                                                    match = true;
                                                }
                                            }
                                        } else {
                                            Node nextA = Graphs.successorListOf(patternAfter, patternAfterStart).get(0);
                                            int t = 1;
                                            boolean foundMatchOuterA = true;
                                            while (!nextA.isSinkQubit()) {
                                                boolean foundMatchInnerA = false;
                                                for (Node circN4 : circuitTopo.get(j+t)) {
                                                    if (circN4.isGate() && circN4.getId().equals(nextA.getId()) && Arrays.equals(circN4.getQubits(), circN2.getQubits())) {
                                                        if (nextA.getAngles() != null) {
                                                            if (matchAngles(circN4, nextA, angleMap)) {
                                                                foundMatchInnerA = true;
                                                                break;
                                                            }
                                                        } else {
                                                            foundMatchInnerA = true;
                                                            break;
                                                        }
                                                    }
                                                }
                                                if (!foundMatchInnerA) {
                                                    foundMatchOuterA = false;
                                                    break;
                                                }
                                                nextA = Graphs.successorListOf(patternAfter, nextA).get(0);
                                                t++;
                                            }
                                            if (foundMatchOuterA) {
                                                match = true;
                                            }
                                        }
                                    }
                                }

                                boolean goToElse = false;
                                if (match) {
                                    Circuit symbCirc = opsToCircuit(symb);
                                    if (symbCirc.getUsedQubits().size() <= maxSymbQubits) {
                                        for (Map<boolean[], boolean[]> constraint : constraints) {
                                            boolean satisfiesConstraint = true;
                                            for (Map.Entry<boolean[], boolean[]> e : constraint.entrySet()) {
                                                Map<String, Integer> qubitMap = new HashMap<>();
                                                Map<String, Boolean> expectedMap = new HashMap<>();
                                                if (patternBeforeStart.getQubits()[0].equals("q0")) {
                                                    qubitMap.put(circN.getQubits()[0], e.getKey()[0] ? 1 : 0);
                                                    expectedMap.put(circN.getQubits()[0], e.getValue()[0]);
                                                }
                                                if (patternAfterStart.getQubits()[0].equals("q0")) {
                                                    qubitMap.put(circN2.getQubits()[0], e.getKey()[0] ? 1 : 0);
                                                    expectedMap.put(circN2.getQubits()[0], e.getValue()[0]);
                                                }
                                                if (patternBeforeStart.getQubits()[0].equals("q1")) {
                                                    qubitMap.put(circN.getQubits()[0], e.getKey()[1] ? 1 : 0);
                                                    expectedMap.put(circN.getQubits()[0], e.getValue()[1]);
                                                }
                                                if (patternAfterStart.getQubits()[0].equals("q1")) {
                                                    qubitMap.put(circN2.getQubits()[0], e.getKey()[1] ? 1 : 0);
                                                    expectedMap.put(circN2.getQubits()[0], e.getValue()[1]);
                                                }
                                                if (!verifier.verify(symbCirc, qubitMap, expectedMap)) {
                                                    satisfiesConstraint = false;
                                                    break;
                                                }
                                            }

                                            if (satisfiesConstraint) {
                                                symbToReplace.add(circN2);
                                                Node nextA = Graphs.successorListOf(patternAfter, patternAfterStart).get(0);
                                                Node circNextA = Graphs.successorListOf(circuit, circN2).get(0);
                                                while (!nextA.isSinkQubit()) {
                                                    symbToReplace.add(circNextA);
                                                    circNextA = Graphs.successorListOf(circuit, circNextA).get(0);
                                                    nextA = Graphs.successorListOf(patternAfter, nextA).get(0);
                                                }
                                                return symbToReplace;
                                            }
                                        }
                                    }
                                    goToElse = true;
                                } else {
                                    goToElse = true;
                                }

                                if (goToElse) {
                                    if (circN2.getId().equals("h")) {
                                        blockedQubits.add(circN2.getQubits()[0]);
//                                        removeSuccs(circuit, symb, circN2);
                                        symbToReplace.add(circN2);
                                    } else {
                                        if (!symbToReplace.contains(circN2) && !blockedQubits.contains(circN2.getQubits()[0]) && !blockedQubits.contains(circN2.getQubits()[1]) && !blockedQubits.contains(circN2.getQubits()[2])) {
                                            symb.add(circN2);
                                            symbToReplace.add(circN2);
                                        } else {
                                            if (circN2.isCCZ()) {
                                                if (!blockedQubits.contains(circN2.getQubits()[2])) {
                                                    // target in border, exclude qubit and successors
                                                    blockedQubits.add(circN2.getQubits()[2]);
                                                    symbToReplace.add(circN2);
//                                                removeSuccs(circuit, symb, circN2);
                                                } else if (blockedQubits.contains(circN2.getQubits()[2])) {
                                                    // control in border, ignore
                                                    symbToReplace.add(circN2);
                                                }
                                            } else if (circN2.isCX()) {
                                                if (blockedQubits.contains(circN2.getQubits()[0])) {
                                                    // target in border, exclude qubit and successors
                                                    blockedQubits.add(circN2.getQubits()[1]);
                                                    symbToReplace.add(circN2);
//                                                removeSuccs(circuit, symb, circN2);
                                                } else if (blockedQubits.contains(circN2.getQubits()[1])) {
                                                    // control in border, ignore
                                                    symbToReplace.add(circN2);
                                                }
                                            } else {
                                                symbToReplace.add(circN2);
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }

        return null;
    }

//    private void removeSuccs(DirectedMultigraph<Node, Edge> circuit, List<Node> symb, Node succ) {
//        TopologicalOrderIterator<Node, Edge> circIter = new TopologicalOrderIterator<>(circuit);
//
//        boolean remove = false;
//        while (circIter.hasNext()) {
//            Node next = circIter.next();
//            if (!next.isGate()) {
//                continue;
//            }
//            if (next == succ) {
//                remove = true;
//            }
//            if (remove) {
//                String blockedQubit = succ.getQubits()[0];
//                if (blockedQubit.equals(next.getQubits()[0]) || blockedQubit.equals(next.getQubits()[1])) {
//                    symb.remove(next);
//                }
//                if (succ.isCX()) {
//                    String blockedQubit2 = succ.getQubits()[1];
//                    if (blockedQubit2.equals(next.getQubits()[0]) || blockedQubit2.equals(next.getQubits()[1])) {
//                        symb.remove(next);
//                    }
//                }
//            }
//        }
//    }

    private int hash(DirectedMultigraph<Node, Edge> graph) {
        int hash = 31;
        boolean isDirected = graph.getType().isDirected();

        int part;
        for(Iterator<Edge> var3 = graph.edgeSet().iterator(); var3.hasNext(); hash += part) {
            Edge e = var3.next();
            part = e.hash();
            int source = graph.getEdgeSource(e).hash();
            int target = graph.getEdgeTarget(e).hash();
            int pairing = source + target;
            if (isDirected) {
                pairing = pairing * (pairing + 1) / 2 + target;
            }

            part = 31 * part + pairing;
            part = 31 * part + Double.hashCode(graph.getEdgeWeight(e));
        }

        return hash;
    }

    public List<Map<boolean[], boolean[]>> parseConstraints(String stringConstraints) {
        List<Map<boolean[], boolean[]>> constraints = new ArrayList<>();
        String[] splitOuter = stringConstraints.split("},");
        for (String out : splitOuter) {
            String[] splitInner = out.split("],");
            Map<boolean[], boolean[]> constraint = new HashMap<>();
            for (String in : splitInner) {
                in = in.replace("]=[", ", ");
                in = in.replace("[", "");
                in = in.replace("]", "");
                in = in.replace("{", "");
                in = in.replace("}", "");
                in = in.trim();

                boolean[] key = new boolean[2];
                boolean[] val = new boolean[2];
                String[] bools = in.split(", ");

                key[0] = Boolean.parseBoolean(bools[0]);
                key[1] = Boolean.parseBoolean(bools[1]);
                val[0] = Boolean.parseBoolean(bools[2]);
                val[1] = Boolean.parseBoolean(bools[3]);

                constraint.put(key, val);
            }
            constraints.add(constraint);
        }

        return constraints;
    }

    private Set<String> getQubits(DirectedMultigraph<Node, Edge> circuit) {
        Set<String> qubits = new HashSet<>();
        for (Node n : circuit.vertexSet()) {
            if (n.isQubit()) {
                qubits.add(n.getId());
            }
        }
        return qubits;
    }

    private Set<String> getConnectivity(DirectedMultigraph<Node, Edge> circuit) {
        Set<String> pairs = new HashSet<>();
        for (Node n : circuit.vertexSet()) {
            if (n.isCX()) {
                String qubit1 = n.getQubits()[0];
                String qubit2 = n.getQubits()[1];
                int comp = qubit1.compareTo(qubit2);
                if (comp > 0) {
                    pairs.add(qubit2+qubit1);
                } else if (comp < 0) {
                    pairs.add(qubit1+qubit2);
                } else {
                    throw new RuntimeException("two qubit gate with same qubit");
                }
            }
        }
        return pairs;
    }

    private boolean validRule(String pattern,
                              String replace,
                              DirectedMultigraph<Node, Edge> patternDag,
                              DirectedMultigraph<Node, Edge> replaceDag,
                              boolean removeSizePreservingRules,
                              int maxRuleQubits,
                              boolean preserveMapping) {
        if (removeSizePreservingRules) {
            if (StringUtils.countMatches(pattern, ";") == StringUtils.countMatches(replace, ";")) {
                return false;
            }
        }

        if (pattern.contains("PLUS") || pattern.contains("SUBTRACT")) {
            return false;
        }

        Set<String> patternQubits = getQubits(patternDag);

        if (maxRuleQubits != -1 && patternQubits.size() > maxRuleQubits) {
            return false;
        }

        if (replace.contains("theta1") && !pattern.contains("theta1")) {
            return false;
        }
        if (replace.contains("theta2") && !pattern.contains("theta2")) {
            return false;
        }
        if (replace.contains("theta3") && !pattern.contains("theta3")) {
            return false;
        }
        if (replace.contains("theta4") && !pattern.contains("theta4")) {
            return false;
        }

        if (!GraphTests.isConnected(patternDag)) {
            return false;
        }

        Set<String> replaceQubits = getQubits(replaceDag);
        if (!patternQubits.containsAll(replaceQubits)) {
            return false;
        }

        if (hash(patternDag) == hash(replaceDag)) {
            return false;
        }

        if (preserveMapping) {
            Set<String> patternConnectivity = getConnectivity(patternDag);
            Set<String> replaceConnectivity = getConnectivity(replaceDag);
            if (!patternConnectivity.containsAll(replaceConnectivity)) {
                return false;
            }
        }

        return true;
    }

    private boolean validSymbRule(String patternBeforeSymb,
                                  String patternAfterSymb,
                                  String replaceBeforeSymb,
                                  String replaceAfterSymb,
                                  boolean useSizePreservingSymbRules,
                                  int maxRuleQubits,
                                  boolean preserveMapping) {
        if (patternBeforeSymb.isBlank() || patternAfterSymb.isBlank()) {
            return false;
        }

        String pattern = patternBeforeSymb + patternAfterSymb;
        String replace = replaceBeforeSymb + replaceAfterSymb;

        if (!useSizePreservingSymbRules) {
            if (StringUtils.countMatches(pattern, ";") == StringUtils.countMatches(replace, ";")) {
                return false;
            }
        }

        if (pattern.contains("PLUS") || pattern.contains("SUBTRACT")) {
            return false;
        }

        if (replace.contains("theta1") && !pattern.contains("theta1")) {
            return false;
        }
        if (replace.contains("theta2") && !pattern.contains("theta2")) {
            return false;
        }
        if (replace.contains("theta3") && !pattern.contains("theta3")) {
            return false;
        }
        if (replace.contains("theta4") && !pattern.contains("theta4")) {
            return false;
        }

        DirectedMultigraph<Node, Edge> patternBeforeSymbDag = qasmToDag(patternBeforeSymb);
        DirectedMultigraph<Node, Edge> patternAfterSymbDag = qasmToDag(patternAfterSymb);
        DirectedMultigraph<Node, Edge> replaceBeforeSymbDag = qasmToDag(replaceBeforeSymb);
        DirectedMultigraph<Node, Edge> replaceAfterSymbDag = qasmToDag(replaceAfterSymb);
        Set<String> patternQubits = getQubits(patternBeforeSymbDag);
        patternQubits.addAll(getQubits(patternAfterSymbDag));

        if (maxRuleQubits != -1 && patternQubits.size() > maxRuleQubits) {
            return false;
        }

        Set<String> replaceQubits = getQubits(replaceBeforeSymbDag);
        replaceQubits.addAll(getQubits(replaceAfterSymbDag));
        if (!patternQubits.containsAll(replaceQubits)) {
            return false;
        }

        if (!GraphTests.isConnected(patternBeforeSymbDag)) {
            return false;
        }
        if (!GraphTests.isConnected(patternAfterSymbDag)) {
            return false;
        }

        if (preserveMapping) {
            Set<String> patternConnectivity = getConnectivity(patternBeforeSymbDag);
            patternConnectivity.addAll(getConnectivity(patternAfterSymbDag));
            Set<String> replaceConnectivity = getConnectivity(replaceBeforeSymbDag);
            replaceConnectivity.addAll(getConnectivity(replaceAfterSymbDag));
            if (!patternConnectivity.containsAll(replaceConnectivity)) {
                return false;
            }
        }

        return true;
    }

    private List<Pair<DirectedMultigraph<Node, Edge>, String>> getRules(String filename, boolean removeSizePreservingRules, int maxRuleQubits, boolean preserveMapping, String optObj) throws IOException {
        String path = FileSystems.getDefault().getPath(new String()).toAbsolutePath() + "/" + filename;
        java.util.List<String> rules = Files.readAllLines(Path.of(path));
        List<Pair<DirectedMultigraph<Node, Edge>, String>> result = new ArrayList<>();

        for (String rule : rules) {
            String[] splitRule = rule.split(" \\| ");
            DirectedMultigraph<Node, Edge> lhs = qasmToDag(splitRule[0]);
            DirectedMultigraph<Node, Edge> rhs = qasmToDag(splitRule[1]);

            if (optObj.equals("rz")) {
                if (StringUtils.countMatches(splitRule[0], ";") == StringUtils.countMatches(splitRule[1], ";")) {
                    if (validRule(splitRule[0], splitRule[1], lhs, rhs, removeSizePreservingRules, maxRuleQubits, preserveMapping) && StringUtils.countMatches(splitRule[0], "rz") < StringUtils.countMatches(splitRule[1], "rz")) {
                        result.add(new Pair<>(lhs, splitRule[1] + " | " + splitRule[0]));
                    } else {
                        if (validRule(splitRule[1], splitRule[0], rhs, lhs, removeSizePreservingRules, maxRuleQubits, preserveMapping)) {
                            result.add(new Pair<>(rhs, rule));
                        }
                    }
                } else {
                    if (validRule(splitRule[1], splitRule[0], rhs, lhs, removeSizePreservingRules, maxRuleQubits, preserveMapping)) {
                        result.add(new Pair<>(rhs, rule));
                    }
                }
            } else {
                if (validRule(splitRule[1], splitRule[0], rhs, lhs, removeSizePreservingRules, maxRuleQubits, preserveMapping)) {
                    result.add(new Pair<>(rhs, rule));
                }
            }

//             comment out unless adding both side size preserve
//            if (StringUtils.countMatches(splitRule[0], ";") == StringUtils.countMatches(splitRule[1], ";")) {
//                if (validRule(splitRule[0], splitRule[1], lhs, rhs)) {
//                    result.add(new Pair<>(lhs, splitRule[1] + " | " + splitRule[0]));
//                }
//            }
        }

        return result;
    }

    private List<String> getSymbRules(String pathSymb, boolean useSizePreservingSymbRules, int maxRuleQubits, boolean preserveMapping) throws IOException {
        List<String> rulesSymb = Files.readAllLines(Path.of(pathSymb));
        List<String> pruned = new ArrayList<>();

        for (String rule : rulesSymb) {
            String[] splitRule = rule.split(" \\| ");

            String find = splitRule[1];
            String replace = splitRule[0];

            int findSymbIndex = find.indexOf("symb");
            String findBeforeSymb = StringUtils.stripStart(find.substring(0, findSymbIndex).trim(), ";");
            String findAfterSymb = StringUtils.stripStart(find.substring(find.indexOf(";", findSymbIndex)).trim(), ";").trim();
            int replaceSymbIndex = replace.indexOf("symb");
            String replaceBeforeSymb = StringUtils.stripStart(replace.substring(0, replaceSymbIndex).trim(), ";");
            String replaceAfterSymb = StringUtils.stripStart(replace.substring(replace.indexOf(";", replaceSymbIndex)).trim(), ";").trim();

            if (validSymbRule(findBeforeSymb, findAfterSymb, replaceBeforeSymb, replaceAfterSymb, useSizePreservingSymbRules, maxRuleQubits, preserveMapping)) {
                pruned.add(rule);
            }

//          comment out unless adding both side size preserve
//            if (StringUtils.countMatches(find, ";") == StringUtils.countMatches(replace, ";")) {
//                if (validSymbRule(replaceBeforeSymb, replaceAfterSymb, findBeforeSymb, findAfterSymb)) {
//                    pruned.add(splitRule[1] + " | " + splitRule[0] + " | " + splitRule[2];);
//                }
//            }
        }
        return pruned;
    }

    public OptCircuit optimize(OptCircuit circuit,
                               boolean onlySymb,
                               String filename,
                               int timeout,
                               int maxQueueSize,
                               String ruleFileName,
                               String symbRuleFileName,
                               int itersBeforePrune,
                               boolean pruneProportional,
                               int maxSymbQubits,
                               int maxSymbSize,
                               boolean removeSizePreservingRules,
                               boolean useSizePreservingSymbRules,
                               boolean preserveMapping,
                               int maxRuleQubits,
                               String optObj) throws IOException {
        List<Pair<DirectedMultigraph<Node, Edge>, String>> rules = null;
        if (!onlySymb) {
            rules = getRules(ruleFileName, removeSizePreservingRules, maxRuleQubits, preserveMapping, optObj);
        }
        String pathSymb = FileSystems.getDefault().getPath(new String()).toAbsolutePath() +  "/" + symbRuleFileName;
        List<String> rulesSymb = getSymbRules(pathSymb, useSizePreservingSymbRules, maxRuleQubits, preserveMapping);

        if (!onlySymb) {
            System.out.println(rules.size()+rulesSymb.size());
            System.out.println(rulesSymb.size());
        }

        OptCircuit bestCircuit = circuit;
        long timeToBest = 0;
        Set<Integer> seen = new HashSet<>();
        seen.add(circuit.hashCode());
        PriorityQueue<OptCircuit> q = new PriorityQueue<>(new GraphComparator(optObj));
        q.add(circuit);
        long timeStart = System.currentTimeMillis();
        Map<String, Integer> ruleCount = new HashMap<>();

        if (pruneProportional) {
            itersBeforePrune = itersBeforePrune * bestCircuit.getCircuit().vertexSet().size() / 1000;
        }

        int iters = 0;
        while (!q.isEmpty()) {
            iters++;
            if (itersBeforePrune != -1 && iters > itersBeforePrune) {
                List<Pair<DirectedMultigraph<Node, Edge>, String>> trimmedRules = new ArrayList<>();
                int rulesSizeBefore = rules.size();
                int symbRulesSizeBefore = rulesSymb.size();
                for (Pair<DirectedMultigraph<Node, Edge>, String> rule : rules) {
//                    for (Pair<String, Integer> p : bestCircuit.getRulesApplied()) {
//                        if (p.getFirst().equals(rule.getSecond())) {
//                            trimmedRules.add(rule);
//                            break;
//                        }
//                    }

                    if (ruleCount.containsKey(rule.getSecond())) {
                        trimmedRules.add(rule);
                    }
                }
                rules = trimmedRules;

                List<String> trimmedSymbRules = new ArrayList<>();
                for (String ruleSymb : rulesSymb) {
//                    for (Pair<String, Integer> p : bestCircuit.getRulesApplied()) {
//                        if (p.getFirst().equals(ruleSymb)) {
//                            trimmedSymbRules.add(ruleSymb);
//                            break;
//                        }
//                    }

                    if (ruleCount.containsKey(ruleSymb)) {
                        trimmedSymbRules.add(ruleSymb);
                    }
                }
                rulesSymb = trimmedSymbRules;

                System.out.println(filename + " pruning b/c reached " + itersBeforePrune + " iters. " + String.format("# rules before: %s, # rules after: %s, # symb rules before: %s, # symb rules after: %s", rulesSizeBefore, rules.size(), symbRulesSizeBefore, rulesSymb.size()));
            }
            System.out.println(filename + " Queue size: " + q.size() + ", Seen set size: " + seen.size());
            OptCircuit c = q.poll();
            if (c.getCircuit().vertexSet().size() < bestCircuit.getCircuit().vertexSet().size()) {
                bestCircuit = c;
                timeToBest = ((System.currentTimeMillis() - timeStart) / 1000);
            }
            System.out.println(filename + String.format(" Best circuit size: %s, Best size 2q: %s, Time to best (s): %s, Current circuit size: %s, Seconds elapsed: %s", circuitSize(bestCircuit.getCircuit()), circuitSize2q(bestCircuit.getCircuit()), timeToBest, circuitSize(c.getCircuit()), ((System.currentTimeMillis() - timeStart) / 1000)));

            if (q.size() > (maxQueueSize + 1000)) {
                PriorityQueue<OptCircuit> pruned = new PriorityQueue<>(new GraphComparator(optObj));
                while (pruned.size() != maxQueueSize) {
                    pruned.add(q.poll());
                }
                q = pruned;
            }

            if (((System.currentTimeMillis() - timeStart) / 1000) > timeout) {
                List<Map.Entry<String, Integer>> list = new ArrayList<>(ruleCount.entrySet());
                list.sort(Map.Entry.comparingByValue());
                java.util.Collections.reverse(list);
                System.out.println(filename + " all rules: " + list);
                System.out.println(filename + " time to best final: " + timeToBest);
                return bestCircuit;
            }

            if (!onlySymb) {
                for (Pair<DirectedMultigraph<Node, Edge>, String> rule : rules) {
                    String[] splitRule = rule.getSecond().split(" \\| ");
                    DirectedMultigraph<Node, Edge> result = applyRule(c.getCircuit(), splitRule[0], rule.getFirst());

                    if (result == c.getCircuit()) {
                        continue;
                    }

                    int hash = hash(result);
                    if (result.vertexSet().size() <= bestCircuit.getCircuit().vertexSet().size() && !seen.contains(hash)) {
                        if (ruleCount.containsKey(rule.getSecond())) {
                            ruleCount.put(rule.getSecond(), ruleCount.get(rule.getSecond()) + 1);
                        } else {
                            ruleCount.put(rule.getSecond(), 1);
                        }
                        OptCircuit newOptCirc = new OptCircuit(result, new ArrayList<>(c.getRulesApplied()), System.nanoTime());
                        newOptCirc.getRulesApplied().add(new Pair<>(rule.getSecond(), circuitSize(result)));
                        q.add(newOptCirc);
                    }
                    seen.add(hash);
                }
            }

            for (String ruleSymb : rulesSymb) {
                String[] splitRule = ruleSymb.split(" \\| ");

                String find = splitRule[1];
                String replace = splitRule[0];

                int findSymbIndex = find.indexOf("symb");
                String findBeforeSymb = StringUtils.stripStart(find.substring(0, findSymbIndex).trim(), ";");
                String findAfterSymb = StringUtils.stripStart(find.substring(find.indexOf(";", findSymbIndex)).trim(), ";").trim();
                int replaceSymbIndex = replace.indexOf("symb");
                String replaceBeforeSymb = StringUtils.stripStart(replace.substring(0, replaceSymbIndex).trim(), ";");
                String replaceAfterSymb = StringUtils.stripStart(replace.substring(replace.indexOf(";", replaceSymbIndex)).trim(), ";").trim();

                DirectedMultigraph<Node, Edge> result = applySymbRule(c.getCircuit(), findBeforeSymb, findAfterSymb, replaceBeforeSymb, replaceAfterSymb, parseConstraints(splitRule[2]), maxSymbQubits, maxSymbSize);

                if (result == c.getCircuit()) {
                    continue;
                }

                int hash = hash(result);
                if (result.vertexSet().size() <= bestCircuit.getCircuit().vertexSet().size() && !seen.contains(hash)) {
                    if (ruleCount.containsKey(ruleSymb)) {
                        ruleCount.put(ruleSymb, ruleCount.get(ruleSymb) + 1);
                    } else {
                        ruleCount.put(ruleSymb, 1);
                    }
                    OptCircuit newOptCirc = new OptCircuit(result, new ArrayList<>(c.getRulesApplied()), System.nanoTime());
                    newOptCirc.getRulesApplied().add(new Pair<>(ruleSymb, circuitSize(result)));
                    q.add(newOptCirc);
                }
                seen.add(hash);
            }
        }

        List<Map.Entry<String, Integer>> list = new ArrayList<>(ruleCount.entrySet());
        list.sort(Map.Entry.comparingByValue());
        java.util.Collections.reverse(list);
        System.out.println(filename + " all rules: " + list);
        System.out.println(filename + " time to best final: " + timeToBest);
        return bestCircuit;
    }

    private String decompFirst(String qasm, String gateToDecomp, String decomp) {
        int ccxIndex = qasm.indexOf(gateToDecomp);
        int end = qasm.indexOf(";", ccxIndex);
        String contentBefore = qasm.substring(0, ccxIndex);
        String contentAfter = qasm.substring(end + 1);
        String contentBetween = qasm.substring(ccxIndex, end);
        contentBetween = contentBetween.replace(",", "");
        String[] split = contentBetween.split(" ");
        decomp = decomp.replace("?q1", split[1]);
        decomp = decomp.replace("?q2", split[2]);
        decomp = decomp.replace("?q3", split[3]);
        qasm = contentBefore + decomp + contentAfter;

        return qasm;
    }

    public void optimizeOne(File file,
                            int timeout,
                            int maxQueueSize,
                            String ruleFileName,
                            String symbRuleFileName,
                            Path output,
                            String gateset,
                            int itersBeforePrune,
                            boolean pruneProportional,
                            String jobInfo,
                            int maxSymbQubits,
                            int maxSymbSize,
                            boolean removeSizePreservingRules,
                            boolean useSizePreservingSymbRules,
                            boolean preserveMapping,
                            int maxRuleQubits,
                            String optObj) throws IOException {
        if (file.getName().contains("optimized")) { return; }
        if (!file.getName().contains("qasm")) { return; }
        System.out.println(file.getName());
        String content = Files.readString(file.toPath());

        if (gateset.equals("nam")) {

        } else if (gateset.equals("ibmnew")) {
            while (content.contains("h")) {
                String decomp = "rz(pi/2) ?q1;\nsx ?q1;\nrz(pi/2) ?q1;";
                int gateIndex = content.indexOf(";\nh");
                int end = content.indexOf(";", gateIndex + 1);
                String contentBefore = content.substring(0, gateIndex + 2);
                String contentAfter = content.substring(end + 1);
                String contentBetween = content.substring(gateIndex + 2, end);
                contentBetween = contentBetween.replace(",", "");
                String[] split = contentBetween.split(" ");
                decomp = decomp.replace("?q1", split[1]);
                content = contentBefore + decomp + contentAfter;
            }
        } else if (gateset.equals("ibm")) {
            while (content.contains(";\nx")) {
                String decomp = "u3(pi,0,pi) ?q1;";
                int gateIndex = content.indexOf(";\nx");
                int end = content.indexOf(";", gateIndex + 1);
                String contentBefore = content.substring(0, gateIndex + 2);
                String contentAfter = content.substring(end + 1);
                String contentBetween = content.substring(gateIndex + 2, end);
                contentBetween = contentBetween.replace(",", "");
                String[] split = contentBetween.split(" ");
                decomp = decomp.replace("?q1", split[1]);
                content = contentBefore + decomp + contentAfter;
            }
            while (content.contains("h")) {
                String decomp = "u2(0,pi) ?q1;";
                int gateIndex = content.indexOf(";\nh");
                int end = content.indexOf(";", gateIndex + 1);
                String contentBefore = content.substring(0, gateIndex + 2);
                String contentAfter = content.substring(end + 1);
                String contentBetween = content.substring(gateIndex + 2, end);
                contentBetween = contentBetween.replace(",", "");
                String[] split = contentBetween.split(" ");
                decomp = decomp.replace("?q1", split[1]);
                content = contentBefore + decomp + contentAfter;
            }
            while (content.contains("rz")) {
                String decomp = "u1(?arg) ?q1;";
                int gateIndex = content.indexOf(";\nrz");
                int end = content.indexOf(";", gateIndex + 1);
                String contentBefore = content.substring(0, gateIndex + 2);
                String contentAfter = content.substring(end + 1);
                String contentBetween = content.substring(gateIndex + 2, end);
                String arg = contentBetween.substring(contentBetween.indexOf("(")+1, contentBetween.indexOf(")"));
                contentBetween = contentBetween.replace(",", "");
                String[] split = contentBetween.split(" ");
                decomp = decomp.replace("?q1", split[1]);
                decomp = decomp.replace("?arg", arg);
                content = contentBefore + decomp + contentAfter;
            }
        } else if (gateset.equals("rigetti")) {
            while (content.contains("cx")) {
                String decomp = "h ?q2;\ncz ?q1, ?q2;\nh ?q2;";
                int gateIndex = content.indexOf(";\ncx");
                int end = content.indexOf(";", gateIndex + 1);
                String contentBefore = content.substring(0, gateIndex + 2);
                String contentAfter = content.substring(end + 1);
                String contentBetween = content.substring(gateIndex + 2, end);
                contentBetween = contentBetween.replace(", ", ",");
                contentBetween = contentBetween.replace(",", ", ");
                contentBetween = contentBetween.replace(",", "");
                String[] split = contentBetween.split(" ");
                decomp = decomp.replace("?q1", split[1]);
                decomp = decomp.replace("?q2", split[2]);
                content = contentBefore + decomp + contentAfter;
            }
            while (content.contains(";\nx")) {
                String decomp = "rx(pi) ?q1;";
                int gateIndex = content.indexOf(";\nx");
                int end = content.indexOf(";", gateIndex + 1);
                String contentBefore = content.substring(0, gateIndex + 2);
                String contentAfter = content.substring(end + 1);
                String contentBetween = content.substring(gateIndex + 2, end);
                contentBetween = contentBetween.replace(",", "");
                String[] split = contentBetween.split(" ");
                decomp = decomp.replace("?q1", split[1]);
                content = contentBefore + decomp + contentAfter;
            }
            while (content.contains("h")) {
                String decomp = "rx(pi) ?q1;\nrz(pi/2) ?q1;\nrx(pi/2) ?q1;\nrz(-pi/2) ?q1;";
                int gateIndex = content.indexOf(";\nh");
                int end = content.indexOf(";", gateIndex + 1);
                String contentBefore = content.substring(0, gateIndex + 2);
                String contentAfter = content.substring(end + 1);
                String contentBetween = content.substring(gateIndex + 2, end);
                contentBetween = contentBetween.replace(",", "");
                String[] split = contentBetween.split(" ");
                decomp = decomp.replace("?q1", split[1]);
                content = contentBefore + decomp + contentAfter;
            }
        } else if (gateset.equals("ion")) {
            while (content.contains("cx")) {
                String decomp = "ry(pi/2) ?q1;\nrxx(pi/2) ?q1, ?q2;\nrx(-pi/2) ?q1;\nrx(-pi/2) ?q2;\nry(-pi/2) ?q1;";
                int gateIndex = content.indexOf(";\ncx");
                int end = content.indexOf(";", gateIndex + 1);
                String contentBefore = content.substring(0, gateIndex + 2);
                String contentAfter = content.substring(end + 1);
                String contentBetween = content.substring(gateIndex + 2, end);
                contentBetween = contentBetween.replace(", ", ",");
                contentBetween = contentBetween.replace(",", ", ");
                contentBetween = contentBetween.replace(",", "");
                String[] split = contentBetween.split(" ");
                decomp = decomp.replace("?q1", split[1]);
                decomp = decomp.replace("?q2", split[2]);
                content = contentBefore + decomp + contentAfter;
            }
            while (content.contains(";\nx")) {
                String decomp = "rx(pi) ?q1;";
                int gateIndex = content.indexOf(";\nx");
                int end = content.indexOf(";", gateIndex + 1);
                String contentBefore = content.substring(0, gateIndex + 2);
                String contentAfter = content.substring(end + 1);
                String contentBetween = content.substring(gateIndex + 2, end);
                contentBetween = contentBetween.replace(",", "");
                String[] split = contentBetween.split(" ");
                decomp = decomp.replace("?q1", split[1]);
                content = contentBefore + decomp + contentAfter;
            }
            while (content.contains("h")) {
                String decomp = "ry(pi/2) ?q1;\nrx(pi) ?q1;";
                int gateIndex = content.indexOf(";\nh");
                int end = content.indexOf(";", gateIndex + 1);
                String contentBefore = content.substring(0, gateIndex + 2);
                String contentAfter = content.substring(end + 1);
                String contentBetween = content.substring(gateIndex + 2, end);
                contentBetween = contentBetween.replace(",", "");
                String[] split = contentBetween.split(" ");
                decomp = decomp.replace("?q1", split[1]);
                content = contentBefore + decomp + contentAfter;
            }
        } else {
            throw new RuntimeException("unimplemented gateset: " + gateset);
        }

        String header = "";
        header += content.substring(0, content.indexOf("\n") + 1);
        content = content.substring(content.indexOf("\n") + 1);
        header += content.substring(0, content.indexOf("\n") + 1);
        content = content.substring(content.indexOf("\n") + 1);
        header += content.substring(0, content.indexOf("\n") + 1);
        content = content.substring(content.indexOf("\n") + 1);
        content = content.replace("qubits[", "q");
        content = content.replace("q[", "q");
        content = content.replace(", ", ",");
        content = content.replace("];", "; ");
        content = content.replace("],", ", ");
        content = content.replace("\n", "");
        content = content.trim();

        List<Pair<String, Integer>> rulesApplied = new ArrayList<>();

        while (content.contains("ccz")) {
            String decomp0 = "cx ?q2, ?q3; rz(-pi/4) ?q3; cx ?q1, ?q3; rz(pi/4) ?q3; cx ?q2, ?q3; rz(-pi/4) ?q3; cx ?q1, ?q3; cx ?q1, ?q2; rz(-pi/4) ?q2; cx ?q1, ?q2; rz(pi/4) ?q1; rz(pi/4) ?q2; rz(pi/4) ?q3;";
            String decomp1 = "cx ?q2, ?q3; rz(pi/4) ?q3; cx ?q1, ?q3; rz(-pi/4) ?q3; cx ?q2, ?q3; rz(pi/4) ?q3; cx ?q1, ?q3; cx ?q1, ?q2; rz(pi/4) ?q2; cx ?q1, ?q2; rz(-pi/4) ?q1; rz(-pi/4) ?q2; rz(-pi/4) ?q3;";
            content = content.replace("\n", "");
            content = content.trim();
            String content0 = decompFirst(content, "ccz", decomp0);
            String content1 = decompFirst(content, "ccz", decomp1);

            DirectedMultigraph<Node, Edge> dag0 = qasmToDag(content0);
            OptCircuit optimized0 = optimize(new OptCircuit(dag0, new ArrayList<>(rulesApplied), System.nanoTime()), true, file.getName(), timeout, maxQueueSize, ruleFileName, symbRuleFileName, itersBeforePrune, pruneProportional, maxSymbQubits, maxSymbSize, removeSizePreservingRules, useSizePreservingSymbRules, preserveMapping, maxRuleQubits, optObj);
            DirectedMultigraph<Node, Edge> dag1 = qasmToDag(content1);
            OptCircuit optimized1 = optimize(new OptCircuit(dag1, new ArrayList<>(rulesApplied), System.nanoTime()), true, file.getName(), timeout, maxQueueSize, ruleFileName, symbRuleFileName, itersBeforePrune, pruneProportional, maxSymbQubits, maxSymbSize, removeSizePreservingRules, useSizePreservingSymbRules, preserveMapping, maxRuleQubits, optObj);

            if (optimized0.getCircuit().vertexSet().size() <= optimized1.getCircuit().vertexSet().size()) {
                content = dagToQasm(optimized0.getCircuit());
                rulesApplied = optimized0.getRulesApplied();
                System.out.println(String.format("Gates after optimize0: %s", circuitSize(optimized0.getCircuit())));
            } else {
                content = dagToQasm(optimized1.getCircuit());
                rulesApplied = optimized1.getRulesApplied();
                System.out.println(String.format("Gates after optimize1: %s", circuitSize(optimized1.getCircuit())));
            }
            content = content.replace("\n", "");
            content = content.trim();
        }

        long time1 = System.currentTimeMillis();
        DirectedMultigraph<Node, Edge> dag = qasmToDag(content);
        System.out.println(String.format("%s size after toff decomp opt: %s", file.getName(), circuitSize(dag)));
        OptCircuit optimized = optimize(new OptCircuit(dag, rulesApplied, System.nanoTime()), false, file.getName(), timeout, maxQueueSize, ruleFileName, symbRuleFileName, itersBeforePrune, pruneProportional, maxSymbQubits, maxSymbSize, removeSizePreservingRules, useSizePreservingSymbRules, preserveMapping, maxRuleQubits, optObj);
        long time2 = System.currentTimeMillis();
        System.out.println(String.format("%s optimized in %s seconds. Final gate count: %s, 2q count: %s", file.getName(), ((time2-time1)/1000), circuitSize(optimized.getCircuit()), circuitSize2q(optimized.getCircuit())));
        System.out.println(String.format("Rules applied to best circuit %s: %s", file.getName(), optimized.getRulesApplied()));

        String qasm = dagToQasm(optimized.getCircuit());
        qasm = qasm.replace("q", "q[");
        qasm = qasm.replace(";", "];");
        qasm = qasm.replace(", ", "], ");
        qasm = header + qasm;

        Files.write(Path.of(output + String.format("/optimized_%s_%s", jobInfo, file.getName())), Collections.singleton(qasm), StandardCharsets.UTF_8);
    }

    public void optimizeAll(int timeout,
                            int maxQueueSize,
                            String ruleFileName,
                            String symbRuleFileName,
                            Path outputDir,
                            String gateset,
                            int itersBeforePrune,
                            boolean pruneProportional,
                            String jobInfo,
                            int maxSymbQubits,
                            int maxSymbSize,
                            boolean removeSizePreservingRules,
                            boolean useSizePreservingSymbRules,
                            boolean preserveMapping,
                            int maxRuleQubits,
                            String optObj) throws IOException {
        Path dirPath = Path.of(  FileSystems.getDefault().getPath(new String()).toAbsolutePath() + "/benchmarks");
        File dir = new File(String.valueOf(dirPath));
        for (File file : dir.listFiles()) {
            optimizeOne(file, timeout, maxQueueSize, ruleFileName, symbRuleFileName, outputDir, gateset, itersBeforePrune, pruneProportional, jobInfo, maxSymbQubits, maxSymbSize, removeSizePreservingRules, useSizePreservingSymbRules, preserveMapping, maxRuleQubits, optObj);
        }
    }

    public static void main(String[] args) throws IOException {
        Options options = new Options();

        Option circuitFilepathO = new Option("c", "circ", true, "input circuit path");
        circuitFilepathO.setRequired(true);
        options.addOption(circuitFilepathO);

        Option gatesetO = new Option("g", "gateSet", true, "gate set (options: nam, ibm, rigetti, ion). value does not matter if input circuit already in target gate set");
        gatesetO.setRequired(true);
        options.addOption(gatesetO);

        Option rulesO = new Option("r", "rules", true, "non-symbolic rules path");
        rulesO.setRequired(true);
        options.addOption(rulesO);

        Option symbRulesO = new Option("sr", "symbRules", true, "symbolic rules path");
        symbRulesO.setRequired(true);
        options.addOption(symbRulesO);

        Integer timeout = 3600;
        Option timeoutO = new Option("t", "timeout", true, String.format("timeout in seconds (default: %s)", timeout));
        timeoutO.setRequired(false);
        options.addOption(timeoutO);

        Integer maxQueueSize = 8000;
        Option maxQueueSizeO = new Option("q", "queueSize", true, String.format("max priority queue size (default: %s)", maxQueueSize));
        maxQueueSizeO.setRequired(false);
        options.addOption(maxQueueSizeO);

        String outputDir = "";
        Option outputDirO = new Option("o", "outputDir", true, "relative path to directory for output circuit (default: current working directory). creates directory if it does not exist");
        outputDirO.setRequired(false);
        options.addOption(outputDirO);

        String jobInfo = "";
        Option jobInfoO = new Option("j", "jobInfo", true, "job info to add to output file name (default: empty string)");
        jobInfoO.setRequired(false);
        options.addOption(jobInfoO);

        Integer maxSymbSize = 10;
        Option maxSymbSizeO = new Option("mss", "maxSymbSize", true, String.format("max size (number of gates) to consider for symbolic circuit (default %s)", maxSymbSize));
        maxSymbSizeO.setRequired(false);
        options.addOption(maxSymbSizeO);

        Integer maxSymbQubits = 7;
        Option maxSymbQubitsO = new Option("msq", "maxSymbQubits", true, String.format("max number of qubits allowed for symbolic circuit (default %s)", maxSymbQubits));
        maxSymbQubitsO.setRequired(false);
        options.addOption(maxSymbQubitsO);

        Integer itersBeforePrune = -1;
        Option itersBeforePruneO = new Option("iters", "itersBeforePrune", true, String.format("iterations of main optimize loop before pruning rules (default: %s). -1 to disable pruning", itersBeforePrune));
        itersBeforePruneO.setRequired(false);
        options.addOption(itersBeforePruneO);

        Boolean pruneProportional = false;
        Option pruneProportionalO = new Option("pruneProportional", false, "scale itersBeforePrune proportionally with circuit size");
        pruneProportionalO.setRequired(false);
        options.addOption(pruneProportionalO);

        Boolean removeSizePreservingRules = false;
        Option removeSizePreservingRulesO = new Option("removeSizePreservingRules", false, "remove size-preserving nonsymbolic rules");
        removeSizePreservingRulesO.setRequired(false);
        options.addOption(removeSizePreservingRulesO);

        Boolean useSizePreservingSymbRules = false;
        Option useSizePreservingSymbRulesO = new Option("useSizePreservingSymbRules", false, "use size-preserving symbolic rules");
        useSizePreservingSymbRulesO.setRequired(false);
        options.addOption(useSizePreservingSymbRulesO);

        Integer maxRuleQubits = -1;
        Option maxRuleQubitsO = new Option("mrq", "maxRuleQubits", true, "max qubits allowed in rules (default: -1). -1 for no limit");
        maxRuleQubitsO.setRequired(false);
        options.addOption(maxRuleQubitsO);

        Boolean preserveMapping = false;
        Option preserveMappingO = new Option("preserveMapping", false, "preserve connectivity of input circuit (preserve mapping)");
        preserveMappingO.setRequired(false);
        options.addOption(preserveMappingO);

        String optObj = "total";
        Option optObjO = new Option("opt", "optimizationObjective", true, String.format("optimization objective (options: total, rz). (default: %s)", optObj));
        optObjO.setRequired(false);
        options.addOption(optObjO);

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
                formatter.printHelp("QUESO Optimizer", options);
                return;
            }
        } catch (ParseException e) {
        }

        try {
            CommandLine cmd = parser.parse(options, args);

            String circuitFilepath = cmd.getOptionValue("circ");
            String gateSet = cmd.getOptionValue("gateSet");
            String rulesFilepath = cmd.getOptionValue("rules");
            String symbRulesFilepath = cmd.getOptionValue("symbRules");
            timeout = Integer.parseInt(cmd.getOptionValue("timeout", timeout.toString()));
            maxQueueSize = Integer.parseInt(cmd.getOptionValue("queueSize", maxQueueSize.toString()));
            outputDir = cmd.getOptionValue("outputDir", outputDir);
            jobInfo = cmd.getOptionValue("jobInfo", jobInfo);
            maxSymbSize = Integer.parseInt(cmd.getOptionValue("maxSymbSize", maxSymbSize.toString()));
            maxSymbQubits = Integer.parseInt(cmd.getOptionValue("maxSymbQubits", maxSymbQubits.toString()));
            itersBeforePrune = Integer.parseInt(cmd.getOptionValue("itersBeforePrune", itersBeforePrune.toString()));
            pruneProportional = cmd.hasOption(pruneProportionalO);
            removeSizePreservingRules = cmd.hasOption(removeSizePreservingRulesO);
            useSizePreservingSymbRules = cmd.hasOption(useSizePreservingSymbRulesO);
            maxRuleQubits = Integer.parseInt(cmd.getOptionValue("maxRuleQubits", maxRuleQubits.toString()));
            preserveMapping = cmd.hasOption(preserveMappingO);
            optObj = cmd.getOptionValue("optimizationObjective", optObj);

            Optimizer applier = new Optimizer(new Random(), maxSymbQubits);

            Files.createDirectories(Paths.get(outputDir));

            applier.optimizeOne(
                    new File(String.valueOf(FileSystems.getDefault().getPath(new String()).resolve(circuitFilepath))),
                    timeout, maxQueueSize, rulesFilepath, symbRulesFilepath,
                    FileSystems.getDefault().getPath(new String()).resolve(outputDir).toAbsolutePath(),
                    gateSet, itersBeforePrune, pruneProportional, jobInfo, maxSymbQubits, maxSymbSize,
                    removeSizePreservingRules, useSizePreservingSymbRules, preserveMapping, maxRuleQubits, optObj
            );
        } catch (ParseException e) {
            System.out.println(e.getMessage());
            formatter.printHelp("QUESO Optimizer", options);

            System.exit(1);
        }
    }
}
