import java.util.List;

public class ConstrainedCircuit {

    private Circuit circuit;
    private List<Integer> constraint;

    public ConstrainedCircuit(Circuit circuit, List<Integer> constraint) {
        this.circuit = circuit;
        this.constraint = constraint;
    }

    public Circuit getCircuit() {
        return circuit;
    }

    public void setCircuit(Circuit circuit) {
        this.circuit = circuit;
    }

    public List<Integer> getConstraint() {
        return constraint;
    }

    public void setConstraint(List<Integer> constraint) {
        this.constraint = constraint;
    }

    @Override
    public String toString() {
        return "ConstrainedCircuit{" +
                "circuit=" + circuit +
                '}';
    }
}
