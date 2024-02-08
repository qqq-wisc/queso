import ast.Expr;

import java.util.Arrays;
import java.util.List;
import java.util.Objects;

public class Node {

    public enum Type {
        GATE,
        QUBIT_SOURCE,
        QUBIT_SINK,
        PARAMETER
    }

    private String id;
    private Type type;
    private String[] qubits;
    private List<Expr> angles;

    public Node(String id, Type type, String[] qubits, List<Expr> angles) {
        this.id = id;
        this.type = type;
        this.qubits = qubits;
        this.angles = angles;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public Type getType() {
        return type;
    }

    public void setType(Type type) {
        this.type = type;
    }

    public String[] getQubits() {
        return qubits;
    }

    public void setQubits(String[] qubits) {
        this.qubits = qubits;
    }

    public List<Expr> getAngles() {
        return angles;
    }

    public void setAngles(List<Expr> angles) {
        this.angles = angles;
    }

    public boolean isGate() {
        return this.type.equals(Type.GATE);
    }

    public boolean isQubit() {
        return this.type.equals(Type.QUBIT_SOURCE) || this.type.equals(Type.QUBIT_SINK);
    }

    public boolean isSourceQubit() {
        return this.type.equals(Type.QUBIT_SOURCE);
    }

    public boolean isSinkQubit() {
        return this.type.equals(Type.QUBIT_SINK);
    }

    public boolean isCX() {
        return this.id.equals("cx") || this.id.equals("cz") || this.id.equals("rxx");
    }

    public boolean isCCZ() {
        return this.id.equals("ccz");
    }

    public int hash() {
        int result = Objects.hash(id, type, angles);
        result = 31 * result + Arrays.hashCode(qubits);
        return result;
    }

    @Override
    public String toString() {
        return id + " " + Arrays.toString(qubits) + " " + type + " " + angles;
    }
}
