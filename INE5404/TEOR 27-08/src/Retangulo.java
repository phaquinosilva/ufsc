
public class Retangulo extends Figura {
	int largura, altura;
	public Retangulo(int b, int a) {
		super();
		largura = b;
		altura = a;
	}
	
	public Retangulo (int x, int y, int b, int a) {
		super(x, y);
		largura = b;
		altura = a;
	}
	
	public String toString() {
		return ("Retangulo(" + x0 + " : " + y0 + " : " + largura + " : " + altura + ")");
	}
	
	public int area() { 
		return altura*largura; 
	}
	
	public int perimetro() {
		return (altura+largura)*2;
	}
}
