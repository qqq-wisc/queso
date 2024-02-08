package ast;

public final class Var extends Expr {
  private String id;

  public Var(String id) {
    this.id = id;
  }

  public String getId() {
    return id;
  }

  public void setId(String id) {
    this.id = id;
  }

  @Override
  public String toString() {
    return "Var [id=" + id + "]";
  }
}
