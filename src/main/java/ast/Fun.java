package ast;

public final class Fun extends Expr {
  private String qubit;
  private Expr arg;

  public Fun(String qubit, Expr arg) {
    this.qubit = qubit;
    this.arg = arg;
  }

  public String getName() {
    return "F" + qubit;
  }

  public String getQubit() {
    return qubit;
  }

  public void setQubit(String qubit) {
    this.qubit = qubit;
  }

  public Expr getArg() {
    return arg;
  }
  
  public void setArg(Expr arg) {
    this.arg = arg;
  }

  @Override
  public String toString() {
    return "Fun [name=" + getName() + ", arg=" + arg + "]";
  }
}
