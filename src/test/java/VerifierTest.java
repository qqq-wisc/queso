import ast.BinOp;
import ast.Expr;
import ast.Real;
import ast.Symbol;
import ast.Var;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.AbstractMap.SimpleEntry;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.TreeMap;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertFalse;
import static org.junit.jupiter.api.Assertions.assertNotEquals;
import static org.junit.jupiter.api.Assertions.assertNull;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class VerifierTest {

    String Q0 = "q0";
    String Q1 = "q1";
    String Q2 = "q2";
    ArrayList<String> QUBITS = new ArrayList<>(Arrays.asList(Q0, Q1, Q2));
    TreeMap<String, Expr> F = new TreeMap<>(Map.of(
            Q0, new Var(Q0),
            Q1, new Var(Q1),
            Q2, new Var(Q2)
    ));
    int MAX_QUBITS_SYMB = 2;

    private static Verifier verifier;
    private static Map<String, Double> symbolMap;
    private Circuit c1;
    private Circuit c2;

    @BeforeAll
    public static void setupAll() {
        Random rand = new Random();
        long seed = rand.nextLong();
        rand.setSeed(seed);
        System.out.println(String.format("Seed: %s", seed));

        verifier = new Verifier(rand, 3);

        symbolMap = new HashMap<>();
        symbolMap.put(PathSum.S_PHI, rand.nextDouble());
        symbolMap.put("theta1", rand.nextDouble());
        symbolMap.put("theta2", rand.nextDouble());
    }

    @BeforeEach
    public void setup() {
        c1 = new Circuit(new ArrayList<>(QUBITS),
                new ArrayList<>(Arrays.asList(new PathSum(new Real(1), (TreeMap<String, Expr>) F.clone()))),
                new ArrayList<>()
        );
        c2 = new Circuit(new ArrayList<>(QUBITS),
                new ArrayList<>(Arrays.asList(new PathSum(new Real(1), (TreeMap<String, Expr>) F.clone()))),
                new ArrayList<>()
        );
    }

    @Test
    public void testVerifyNotEqual() {
        PathSum.x(c1, Q0);

        assertNull(verifier.verify(c1, c2));
    }

    @Test
    public void testVerifyEmptyHH() {
        PathSum.h(c1, Q1);
        PathSum.h(c1, Q1);

        assertEquals(new ArrayList<>(), verifier.verify(c1, c2));
    }

    @Test
    public void testVerifyRotationMerging() {
        PathSum.rz(c1, Q0, new Symbol("theta1"));
        PathSum.symb(c1, MAX_QUBITS_SYMB);
        PathSum.rz(c1, Q1, new Symbol("theta2"));

        PathSum.rz(c2, Q0, new BinOp(Expr.Op.ADD, new Symbol("theta1"), new Symbol("theta2")));
        PathSum.symb(c2, MAX_QUBITS_SYMB);

        List<List<Integer>> expected = new ArrayList<>();
        expected.add(Arrays.asList(0,2,1,3));
        expected.add(Arrays.asList(0,3,1,2));
        expected.add(Arrays.asList(1,2,0,3));
        expected.add(Arrays.asList(1,3,0,2));

        assertEquals(expected, verifier.verify(c1, c2));
    }

    @Test
    public void testVerifyConstraintNotEqual() {
        PathSum.x(c1, Q0);

        assertFalse(verifier.verify(c1, c2, new ArrayList<>()));
    }

    @Test
    public void testVerifyConstraintNotEqualSymb() {
        PathSum.rz(c1, Q0, new Symbol("theta1"));
        PathSum.symb(c1, MAX_QUBITS_SYMB);
        PathSum.rz(c1, Q1, new Symbol("theta2"));

        PathSum.rz(c2, Q0, new BinOp(Expr.Op.ADD, new Symbol("theta1"), new Symbol("theta2")));
        PathSum.symb(c2, MAX_QUBITS_SYMB);

        assertFalse(verifier.verify(c1, c2, new ArrayList<>()));
    }

    @Test
    public void testVerifyConstraintEqual() {
        PathSum.h(c1, Q1);
        PathSum.h(c1, Q1);

        assertTrue(verifier.verify(c1, c2, new ArrayList<>()));
    }

    @Test
    public void testVerifyConstraintEqualSymb() {
        PathSum.rz(c1, Q0, new Symbol("theta1"));
        PathSum.symb(c1, MAX_QUBITS_SYMB);
        PathSum.rz(c1, Q1, new Symbol("theta2"));

        PathSum.rz(c2, Q0, new BinOp(Expr.Op.ADD, new Symbol("theta1"), new Symbol("theta2")));
        PathSum.symb(c2, MAX_QUBITS_SYMB);

        assertTrue(verifier.verify(c1, c2, new ArrayList<>(Arrays.asList(1,3,0,2))));
    }

    @Test
    public void testHashEqual() {
        PathSum.cx(c1, Q1, Q2);
        PathSum.h(c1, Q1);
        PathSum.h(c1, Q2);

        PathSum.h(c2, Q1);
        PathSum.h(c2, Q2);
        PathSum.cx(c2, Q2, Q1);

        assertEquals(verifier.hashCode(c1, symbolMap), verifier.hashCode(c2, symbolMap));
    }

    @Test
    public void testHashEqualEmptyXX() {
        PathSum.x(c1, Q0);
        PathSum.x(c1, Q0);

        assertEquals(verifier.hashCode(c1, symbolMap), verifier.hashCode(c2, symbolMap));
    }

    @Test
    public void testHashNotEqualEmptyCX() {
        PathSum.cx(c1, Q0, Q1);

        assertNotEquals(verifier.hashCode(c1, symbolMap), verifier.hashCode(c2, symbolMap));
    }

    @Test
    public void testHashNotEqualHX_H() {
        PathSum.h(c1, Q0);
        PathSum.x(c1, Q0);

        PathSum.h(c2, Q0);

        assertNotEquals(verifier.hashCode(c1, symbolMap), verifier.hashCode(c2, symbolMap));
    }

    @Test
    public void testHashEqualSymb() {
        PathSum.rz(c1, Q0, new Symbol("theta1"));
        PathSum.symb(c1, MAX_QUBITS_SYMB);
        PathSum.rz(c1, Q1, new Symbol("theta2"));

        PathSum.rz(c2, Q0, new BinOp(Expr.Op.ADD, new Symbol("theta1"), new Symbol("theta2")));
        PathSum.symb(c2, MAX_QUBITS_SYMB);

        List<SimpleEntry<Integer, List<Integer>>> result1 = verifier.hashCode(c1, symbolMap);
        List<SimpleEntry<Integer, List<Integer>>> result2 = verifier.hashCode(c2, symbolMap);

        int count = 0;
        List<List<Integer>> expected = new ArrayList<>();
        expected.add(Arrays.asList(0,2,1,3));
        expected.add(Arrays.asList(0,3,1,2));
        expected.add(Arrays.asList(1,2,0,3));
        expected.add(Arrays.asList(1,3,0,2));
        List<List<Integer>> actual = new ArrayList<>();
        for (int i = 0; i < result1.size(); i++) {
            if (result1.get(i).getKey().equals(result2.get(i).getKey())) {
                count++;
                assertEquals(result1.get(i).getValue(), result2.get(i).getValue());
                actual.add(result1.get(i).getValue());
            }
        }
        assertEquals(4, count);
        assertEquals(expected, actual);
    }

    @Test
    public void testHashNotEqualSymb() {
        PathSum.h(c1, Q0);
        PathSum.symb(c1, MAX_QUBITS_SYMB);

        PathSum.symb(c2, MAX_QUBITS_SYMB);

        List<SimpleEntry<Integer, List<Integer>>> result1 = verifier.hashCode(c1, symbolMap);
        List<SimpleEntry<Integer, List<Integer>>> result2 = verifier.hashCode(c2, symbolMap);

        int count = 0;
        for (int i = 0; i < result1.size(); i++) {
            if (result1.get(i).getKey().equals(result2.get(i).getKey())) {
                count++;
            }
        }
        assertEquals(0, count);
    }
}
