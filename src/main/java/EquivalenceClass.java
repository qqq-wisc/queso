import java.util.AbstractMap.SimpleEntry;
import java.util.List;

public class EquivalenceClass {

    private List<ConstrainedCircuit> circuits;
    private ConstrainedCircuit representative;

    public EquivalenceClass(List<ConstrainedCircuit> circuits, ConstrainedCircuit representative) {
        this.circuits = circuits;
        this.representative = representative;
    }

    public List<ConstrainedCircuit> getCircuits() {
        return circuits;
    }

    public void setCircuits(List<ConstrainedCircuit> circuits) {
        this.circuits = circuits;
    }

    public ConstrainedCircuit getRepresentative() {
        return representative;
    }

    public void setRepresentative(ConstrainedCircuit representative) {
        this.representative = representative;
    }

    public void add(ConstrainedCircuit cc) {
        this.circuits.add(cc);
    }

    public int size() {
        return this.circuits.size();
    }
}
