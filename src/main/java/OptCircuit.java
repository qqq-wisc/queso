import org.apache.commons.math3.util.Pair;
import org.jgrapht.graph.DirectedMultigraph;

import java.util.List;

public class OptCircuit {

    private DirectedMultigraph<Node, Edge> circuit;
    private List<Pair<String, Integer>> rulesApplied;
    private long createTime;

    public OptCircuit(DirectedMultigraph<Node, Edge> circuit, List<Pair<String, Integer>> rulesApplied, long createTime) {
        this.circuit = circuit;
        this.rulesApplied = rulesApplied;
        this.createTime = createTime;
    }

    public long getCreateTime() {
        return createTime;
    }

    public DirectedMultigraph<Node, Edge> getCircuit() {
        return circuit;
    }

    public void setCircuit(DirectedMultigraph<Node, Edge> circuit) {
        this.circuit = circuit;
    }

    public List<Pair<String, Integer>> getRulesApplied() {
        return rulesApplied;
    }

    public void setRulesApplied(List<Pair<String, Integer>> rulesApplied) {
        this.rulesApplied = rulesApplied;
    }
}
