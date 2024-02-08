package ast;

public final class UnOp extends Expr {
  private Op op;
  private Expr e;

  public UnOp(Op op, Expr e) {
    this.op = op;
    this.e = e;
  }

  public Op getOp() {
    return op;
  }

  public void setOp(Op op) {
    this.op = op;
  }

  public Expr getE() {
    return e;
  }

  public void setE(Expr e) {
    this.e = e;
  }

  private String opString(Op op) {
    if (op.equals(Op.MINUS)) {
      return "-";
    } else {
      return op.toString();
    }
  }

  @Override
  public String toString() {
    return String.format("%s%s", opString(op), e);
  }
}
