package ast;

import org.apache.commons.math3.fraction.BigFraction;

import java.util.Objects;

public final class ComplexRat extends Expr {

    public static final ComplexRat I = new ComplexRat(BigFraction.ZERO, BigFraction.ONE);
    public static final ComplexRat ONE = new ComplexRat(BigFraction.ONE, BigFraction.ZERO);
    public static final ComplexRat ZERO = new ComplexRat(BigFraction.ZERO, BigFraction.ZERO);
    private BigFraction real;
    private BigFraction imag;

    public ComplexRat(BigFraction real, BigFraction imag) {
        this.real = real;
        this.imag = imag;
    }

    public BigFraction getReal() {
        return real;
    }

    public void setReal(BigFraction real) {
        this.real = real;
    }

    public BigFraction getImag() {
        return imag;
    }

    public void setImag(BigFraction imag) {
        this.imag = imag;
    }

    public ComplexRat add(ComplexRat n) {
        return new ComplexRat(this.real.add(n.real), this.imag.add(n.imag));
    }

    public ComplexRat subtract(ComplexRat n) {
        return new ComplexRat(this.real.subtract(n.real), this.imag.subtract(n.imag));
    }

    public ComplexRat multiply(ComplexRat n) {
        return new ComplexRat(this.real.multiply(n.real).subtract(this.imag.multiply(n.imag)), this.real.multiply(n.imag).add(this.imag.multiply(n.real)));
    }

    public ComplexRat divide(ComplexRat n) {
        BigFraction denom = n.real.pow(2).add(n.imag.pow(2));
        return new ComplexRat(this.real.multiply(n.real).add(this.imag.multiply(n.imag)).divide(denom),this.imag.multiply(n.real).subtract(this.real.multiply(n.imag)).divide(denom));
    }

    public ComplexRat negate() {
        return this.multiply(new ComplexRat(BigFraction.getReducedFraction(-1,1), BigFraction.ZERO));
    }

    public ComplexRat pow(int power) {
        ComplexRat result = this;
        for (int i=0; i < power; i++) {
            result = result.multiply(result);
        }
        return result;
    }

    public ComplexRat inverse() {
        return ComplexRat.ONE.divide(this);
    }

    @Override
    public String toString() {
        return "ComplexRat{" +
                "real=" + real +
                ", imag=" + imag +
                '}';
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ComplexRat that = (ComplexRat) o;
        return Objects.equals(real, that.real) && Objects.equals(imag, that.imag);
    }

    @Override
    public int hashCode() {
        return Objects.hash(real, imag);
    }
}
