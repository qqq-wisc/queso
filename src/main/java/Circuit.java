import java.util.ArrayList;
import java.util.List;

public class Circuit {
  private List<String> qubits;
  private List<String> usedQubits;
  private List<PathSum> pathSum;
  private List<String> qasm;

  public Circuit(List<String> qubits, List<PathSum> pathSum, List<String> qasm) {
    this.qubits = qubits;
    this.usedQubits = new ArrayList<>();
    this.pathSum = pathSum;
    this.qasm = qasm;
  }

  public List<String> getQubits() {
    return qubits;
  }

  public void setQubits(List<String> qubits) {
    this.qubits = qubits;
  }

  public List<String> getUsedQubits() {
    return usedQubits;
  }

  public void setUsedQubits(List<String> usedQubits) {
    this.usedQubits = usedQubits;
  }

  public List<PathSum> getPathSum() {
    return pathSum;
  }

  public void setPathSum(List<PathSum> pathSum) {
    this.pathSum = pathSum;
  }

  public List<String> getQasm() {
    return qasm;
  }

  public void setQasm(List<String> qasm) {
    this.qasm = qasm;
  }

  public String getQasmString() {
    return String.join("; ", qasm).concat(";");
  }

  public String getQasmStringDropFirst() {
    return String.join("; ", qasm.subList(1, qasm.size())).concat(";");
  }

  public boolean hasSymb() {
    return qasm.contains(PathSum.SYMB);
  }

  public boolean hasQubit(String qubit) {
    return usedQubits.contains(qubit);
  }

  public boolean hasQubitGreaterThan(int max) {
    for (String qubit : usedQubits) {
      if (Integer.valueOf(qubit.replace("q", "")) >= max) {
        return true;
      }
    }
    return false;
  }

  public void addQubit(String qubit) {
    this.usedQubits.add(qubit);
  }

  public String getLastOp() {
    if (!qasm.isEmpty()) {
      return qasm.get(qasm.size() - 1);
    } else {
      return "";
    }
  }

  public boolean hasCXH() {
    for (String op : qasm) {
      if (op.contains("cx") || op.contains("h ") || op.contains("cz") || op.contains("rx") || op.contains("ry") || op.contains("rxx") || op.contains("sx")) {
        return true;
      }
    }
    return false;
  }

  public int getSize() {
    return this.qasm.size();
  }

  @Override
  public String toString() {
    return "Circuit [qubits=" + qubits + ", usedQubits=" + usedQubits + ", qasm=" + getQasmString() + ", pathSum=" + pathSum + "]";
  }
}
