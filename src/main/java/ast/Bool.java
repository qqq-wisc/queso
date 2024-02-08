package ast;

public final class Bool extends Expr {
  private boolean bool;

  public Bool(boolean bool) {
    this.bool = bool;
  }

  public boolean isBool() {
    return bool;
  }

  public void setBool(boolean bool) {
    this.bool = bool;
  }

  @Override
  public String toString() {
    return "Bool [bool=" + bool + "]";
  }
}
