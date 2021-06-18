
public class Quadrado extends Retangulo {

	public Quadrado(int a) {
		super(a,a);
	}
	
	public Quadrado(int x, int y, int a) {
		super (x,y,a,a);
	}
	
	public String toString() {
		return ("Quadrado(" + x0 + " : " + y0 + " : " + altura +")");
	}
}
