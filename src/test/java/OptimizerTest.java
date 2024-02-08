import org.junit.jupiter.api.Test;

import java.util.Random;

import static org.junit.jupiter.api.Assertions.assertEquals;

public class OptimizerTest {

    private Optimizer applier = new Optimizer(new Random(), 5);

    @Test
    public void testRule1() {
        String circuit = "h q1; h q2; h q2; x q2;";
        String find = "h q0; h q0;";
        String replace = "";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applyRule(circuitDag, replace, applier.qasmToDag(find));
        assertEquals("h q1; \nx q2; \n", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testRule2() {
        String circuit = "x q0; x q1; cx q0, q1; cx q2, q0; cx q2, q1;";
        String find = "cx q0, q1; cx q2, q0; cx q2, q1;";
        String replace = "cx q2, q0; cx q0, q1;";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applyRule(circuitDag, replace, applier.qasmToDag(find));
        assertEquals("x q0; \nx q1; \ncx q2, q0; \ncx q0, q1; \n", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testRule3() {
        String circuit = "t q2; cx q2, q1; cx q2, q0; cx q3, q1;";
        String find = "cx q2, q1; cx q2, q0;";
        String replace = "cx q2, q0; cx q2, q1;";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applyRule(circuitDag, replace, applier.qasmToDag(find));
        assertEquals("t q2; \ncx q2, q0; \ncx q2, q1; \ncx q3, q1; \n", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testRule4() {
        // testing not matched, not real rule
        String circuit = "x q0; x q1; cx q0, q1; cx q2, q0; cx q2, q1;";
        String find = "x q3; x q1; cx q3, q1; cx q2, q4; cx q2, q1;";
        String replace = "";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applyRule(circuitDag, replace, applier.qasmToDag(find));
        assertEquals("x q0; \nx q1; \ncx q0, q1; \ncx q2, q0; \ncx q2, q1; \n", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testRule5() {
        // testing not matched
        String circuit = "t q4; cx q2, q4; cx q2, q6; tdg q4; cx q3, q5; cx q3, q4;";
        String find = "t q1; cx q0, q1; tdg q1; cx q0, q1;";
        String replace = "cx q0, q1; tdg q1; cx q0, q1; t q1;";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applyRule(circuitDag, replace, applier.qasmToDag(find));
        assertEquals("t q4; \ncx q3, q5; \ncx q2, q4; \ncx q2, q6; \ntdg q4; \ncx q3, q4; \n", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testRule6() {
        // testing not matched, not real rule
        String circuit = "s q2; cx q1, q2; cx q2, q3; tdg q3; cx q1, q3;";
        String find = "s q0; cx q2, q0; cx q2, q1;";
        String replace = "";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applyRule(circuitDag, replace, applier.qasmToDag(find));
        assertEquals("s q2; \ncx q1, q2; \ncx q2, q3; \ntdg q3; \ncx q1, q3; \n", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testRule7() {
        // testing matched, not real rule
        String circuit = "x q1; x q0; cx q0, q1; cx q1, q0; x q1; x q0;";
        String find = "cx q0, q1; cx q1, q0;";
        String replace = "";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applyRule(circuitDag, replace, applier.qasmToDag(find));
        assertEquals("x q1; \nx q0; \nx q1; \nx q0; \n", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testRule8() {
        // testing not matched, not real rule
        String circuit = "x q1; x q0; cx q0, q1; h q1; cx q1, q0; x q1; x q0;";
        String find = "cx q0, q1; cx q1, q0;";
        String replace = "";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applyRule(circuitDag, replace, applier.qasmToDag(find));
        assertEquals("x q1; \nx q0; \ncx q0, q1; \nh q1; \ncx q1, q0; \nx q1; \nx q0; \n", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testRule9() {
        String circuit = "h q0; cx q2, q0; h q0; cx q2, q3; cx q3, q1; cx q0, q1;";
        String find = "h q0; cx q2, q0; h q0; cx q0, q1;";
        String replace = "cx q0, q1; h q0; cx q2, q0; h q0;";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applyRule(circuitDag, replace, applier.qasmToDag(find));
        assertEquals("h q0; \ncx q2, q0; \nh q0; \ncx q2, q3; \ncx q3, q1; \ncx q0, q1; \n", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testRule10() {
        String circuit = "t q13; cx q13, q16; tdg q16; cx q14, q16; t q16; h q16; ccz q9, q16, q15; t q14; h q9; h q16;";
        String find = "t q13; cx q13, q16; tdg q16; cx q14, q16; t q16; h q16; ccz q9, q16, q15; t q14; h q9; h q16;";
        String replace = "";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applyRule(circuitDag, replace, applier.qasmToDag(find));
        assertEquals("", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testRule11()  {
        // test because second match shouldn't be found (would be not valid after first match applied)
        String circuit = "cx q0, q3; cx q3, q4; t q4; tdg q3; cx q0, q4; cx q2, q3; cx q0, q3; cx q2, q4; cx q2, q1; tdg q4;";
        String find = "cx q2, q0; cx q1, q0";
        String replace = "cx q1, q0; cx q2, q0;";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applyRule(circuitDag, replace, applier.qasmToDag(find));
        assertEquals("cx q0, q3; \ncx q3, q4; \nt q4; \ntdg q3; \ncx q2, q3; \ncx q2, q4; \ncx q0, q4; \ncx q2, q1; \ntdg q4; \ncx q0, q3; \n", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testRule12()  {
        // test because second match shouldn't be found (would be not valid after first match applied)
        String circuit = "rz(pi/2) q0; rz(-pi/2) q0;";
        String find = "rz(theta1) q0; rz(theta2) q0;";
        String replace = "rz(theta1 PLUS theta2) q0;";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applyRule(circuitDag, replace, applier.qasmToDag(find));
        System.out.println(applier.dagToQasm(circuitDag));
        assertEquals("", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testSymbRule0() {
        String circuit = "rz(-pi/4) q0; cx q1, q0; cx q0, q1; rz(-pi/4) q1;";
        String constraints = "[{[false, false]=[true, false], [true, false]=[false, true], [false, true]=[false, false], [true, true]=[true, true]}, {[false, false]=[true, false], [true, false]=[true, true], [false, true]=[false, false], [true, true]=[false, true]}, {[false, false]=[false, false], [true, false]=[true, true], [false, true]=[true, false], [true, true]=[false, true]}, {[false, false]=[false, false], [true, false]=[false, true], [false, true]=[true, false], [true, true]=[true, true]}]";

        String findBefore = "rz(theta1) q0;";
        String findAfter = "rz(theta2) q1;";
        String replaceBefore = "rz(theta1 PLUS theta2) q0;";
        String replaceAfter = "";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applySymbRule(circuitDag, findBefore, findAfter, replaceBefore, replaceAfter, applier.parseConstraints(constraints), 7, 10);
        System.out.println(applier.dagToQasm(circuitDag));
        assertEquals("rz(-1.5707963267948966) q0; \ncx q1, q0; \ncx q0, q1; \n", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testSymbRule1() {
        String circuit = "t q0; cx q1, q0; cx q0, q1; t q1;";
        String constraints = "[{[false, false]=[true, false], [true, false]=[false, true], [false, true]=[false, false], [true, true]=[true, true]}, {[false, false]=[true, false], [true, false]=[true, true], [false, true]=[false, false], [true, true]=[false, true]}, {[false, false]=[false, false], [true, false]=[true, true], [false, true]=[true, false], [true, true]=[false, true]}, {[false, false]=[false, false], [true, false]=[false, true], [false, true]=[true, false], [true, true]=[true, true]}]";

        String findBefore = "t q0;";
        String findAfter = "t q1;";
        String replaceBefore = "s q0;";
        String replaceAfter = "";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applySymbRule(circuitDag, findBefore, findAfter, replaceBefore, replaceAfter, applier.parseConstraints(constraints), 7, 10);
        assertEquals("s q0; \ncx q1, q0; \ncx q0, q1; \n", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testSymbRule2() {
        String circuit = "t q2; cx q2, q1; cx q2, q3; t q1; cx q1, q2; h q3; cx q2, q3; cx q1, q2; t q2;";
        String constraints = "[{[false, false]=[false, false], [true, false]=[true, true], [false, true]=[false, false], [true, true]=[true, true]}, {[false, false]=[false, false], [true, false]=[true, true], [false, true]=[false, false], [true, true]=[true, true]}, {[false, false]=[false, false], [true, false]=[true, true], [false, true]=[false, false], [true, true]=[true, true]}, {[false, false]=[false, false], [true, false]=[true, true], [false, true]=[false, false], [true, true]=[true, true]}]";

        String findBefore = "t q0;";
        String findAfter = "t q0;";
        String replaceBefore = "s q0;";
        String replaceAfter = "";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applySymbRule(circuitDag, findBefore, findAfter, replaceBefore, replaceAfter, applier.parseConstraints(constraints), 7, 10);
        assertEquals("s q2; \ncx q2, q1; \nt q1; \ncx q2, q3; \ncx q1, q2; \nh q3; \ncx q2, q3; \ncx q1, q2; \n", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testSymbRule3() {
        String circuit = "t q4; h q4; cx q2, q4; t q2; h q4; cx q1, q4; t q1;";
        String constraints = "[{[false, false]=[true, false], [true, false]=[false, true], [false, true]=[false, false], [true, true]=[true, true]}, {[false, false]=[true, false], [true, false]=[true, true], [false, true]=[false, false], [true, true]=[false, true]}, {[false, false]=[false, false], [true, false]=[true, true], [false, true]=[true, false], [true, true]=[false, true]}, {[false, false]=[false, false], [true, false]=[false, true], [false, true]=[true, false], [true, true]=[true, true]}]";

        String findBefore = "t q0;";
        String findAfter = "t q1;";
        String replaceBefore = "s q0;";
        String replaceAfter = "";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applySymbRule(circuitDag, findBefore, findAfter, replaceBefore, replaceAfter, applier.parseConstraints(constraints), 7, 10);
        assertEquals("t q4; \nh q4; \ncx q2, q4; \nt q2; \nh q4; \ncx q1, q4; \nt q1; \n", applier.dagToQasm(circuitDag));
    }

    @Test
    public void testSymbRule4() {
        String circuit = "t q2; s q2; cx q2, q1; cx q2, q3; t q1; cx q1, q2; h q3; cx q2, q3; cx q1, q2; t q2; s q2";
        String constraints = "[{[false, false]=[false, false], [true, false]=[true, true], [false, true]=[false, false], [true, true]=[true, true]}, {[false, false]=[false, false], [true, false]=[true, true], [false, true]=[false, false], [true, true]=[true, true]}, {[false, false]=[false, false], [true, false]=[true, true], [false, true]=[false, false], [true, true]=[true, true]}, {[false, false]=[false, false], [true, false]=[true, true], [false, true]=[false, false], [true, true]=[true, true]}]";

        String findBefore = "t q0; s q0;";
        String findAfter = "t q0; s q0;";
        String replaceBefore = "s q0;";
        String replaceAfter = "";
        var circuitDag = applier.qasmToDag(circuit);
        circuitDag = applier.applySymbRule(circuitDag, findBefore, findAfter, replaceBefore, replaceAfter, applier.parseConstraints(constraints), 7, 10);
        System.out.println(applier.dagToQasm(circuitDag));
        assertEquals("s q2; \ncx q2, q1; \nt q1; \ncx q2, q3; \ncx q1, q2; \nh q3; \ncx q2, q3; \ncx q1, q2; \n", applier.dagToQasm(circuitDag));
    }
}
