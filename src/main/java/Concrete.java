import java.util.Arrays;

import org.apache.commons.math3.complex.Complex;

public class Concrete {
  private static final int SCALE = (int) Math.pow(10, 10);

  private Complex phi;
  private boolean[] f;

  public Concrete(Complex phi, boolean[] f) {
    this.phi = phi;
    this.f = f;
  }

  public Complex getPhi() {
    return phi;
  }

  public void setPhi(Complex phi) {
    this.phi = phi;
  }

  public boolean[] getF() {
    return f;
  }

  public void setF(boolean[] f) {
    this.f = f;
  }

  @Override
  public String toString() {
    return new Complex(round(phi.getReal()), round(phi.getImaginary())).toString().concat(Arrays.toString(f));
  }

  private static double round(double value) {
    return (double) Math.round(value * SCALE) / SCALE;
  }

  public int hashCode() {
    final int prime = 31;
    int result = 1;
    result = prime * result + Arrays.hashCode(f);
    this.phi = new Complex(round(phi.getReal()), round(phi.getImaginary()));
    result = prime * result + ((phi == null) ? 0 : phi.hashCode());
    return result;
  }
}
