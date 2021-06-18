
public class Teste {

	static void teste (Figura f, String s) {
		System.out.println(s+" ==> " + f.toString() + 
				"area: " + f.area() + 
				"perimetro: " + f.perimetro());
	}
	
	public static void main(String[] args) {
		Retangulo r1 = new Retangulo(1,2,5,10);
		Retangulo r2 = new Retangulo(5,10);
		teste (r1, "r1");
		teste(r2,"r2");
	}
}
