package ast;

public final class Real extends Expr {
  private double number;

  public Real(double number) {
    this.number = number;
  }

  public double getNumber() {
    return number;
  }

  public void setNumber(double number) {
    this.number = number;
  }

  @Override
  public String toString() {
    return "" + number;
  }
}
