package ast;

public final class BinOp extends Expr {
  private Op op;
  private Expr e1;
  private Expr e2;

  public BinOp(Op op, Expr e1, Expr e2) {
    this.op = op;
    this.e1 = e1;
    this.e2 = e2;
  }

  public Op getOp() {
    return op;
  }

  public void setOp(Op op) {
    this.op = op;
  }

  public Expr getE1() {
    return e1;
  }

  public void setE1(Expr e1) {
    this.e1 = e1;
  }

  public Expr getE2() {
    return e2;
  }
  
  public void setE2(Expr e2) {
    this.e2 = e2;
  }

  private String opString(Op op) {
    if (op.equals(Op.MULT)) {
      return "*";
    } else if (op.equals(Op.DIV)) {
      return "/";
    } else {
      if (op.equals(Op.ADD)) {
        return "PLUS";
      }
      return op.toString();
    }
  }

  @Override
  public String toString() {
    if (op.equals(Op.ADD) || op.equals(Op.SUBTRACT)) {
      return String.format("%s %s %s", e1, opString(op), e2);
    }
    return String.format("%s%s%s", e1, opString(op), e2);
  }
}
