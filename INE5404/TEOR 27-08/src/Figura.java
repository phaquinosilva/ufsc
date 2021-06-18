
public abstract class Figura {
	
	public int x0, y0;
	
	public Figura() {
		x0 = 0;
		y0 = 0;
	}
	
	public Figura(int x, int y) {
		x0 = x;
		y0 = y;
	}
	
	public String toString() {
		return "Figura("+x0+" : "+y0+")";
	}
	
	public abstract int area();
	public abstract int perimetro();
}
