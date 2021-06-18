package ex4;

public class Complex {
	private double real;
	private double imag;
	
	Complex() {
		this.real = 0;
		this.imag = 0;
	}
	
	Complex(double real) {
		this.real = real;
		this.imag = 0;
	}
	
	Complex(double real, double imag) {
		this.real = real;
		this.imag = imag;
	}
	
	public double getReal() {
		return real;
	}
	
	public double getImag() {
		return imag;
	}
	
	public double getAbs() {
		return Math.sqrt(imag*imag + real*real);
	}
	
	public double getAngulo() {
		return Math.atan(imag/real);
		
	}
	
	public double[] getInversoAdd() {
		double[] inverso = new double[2];
		inverso[0] = real*(-1);
		inverso[1] = imag*(-1);
		return inverso;
	}
	
	public Complex getSoma (Complex c1, Complex c2) {
		return new Complex(c1.getReal() + c2.getReal(),c1.getImag() + c2.getImag());
	}
	
	public Complex getSubtracao(Complex c1, Complex c2) {
		return new Complex(c1.getReal() - c2.getReal(),c1.getImag() - c2.getImag());
	}
	
	public Complex getProduto(Complex c1, Complex c2) {
		return new Complex(c1.getReal()*c2.getReal() + c1.getImag()*c2.getImag(), c1.getReal()*c2.getImag() + c1.getImag()*c2.getReal());
	}
	
}
