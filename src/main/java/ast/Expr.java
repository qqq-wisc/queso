package ast;

public sealed class Expr 
  permits Bool, Real, Symbol, Var, Fun, UnOp, BinOp, Constant, ComplexRat, Fraction {
  public enum Op {
    /* UnOps */
    EXP,   // e^ix
    SQRT,
    MINUS, // -
    COS,
    SIN,
    // bool
    NOT,   // !
    /* BinOps */
    ADD,
    SUBTRACT,
    MULT,
    DIV,
    // bool
    XOR,
    AND,
    OR
  }

  @Override
  public String toString() {
    return "Expr []";
  }
}
