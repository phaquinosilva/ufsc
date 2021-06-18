package ex3;

public class Teste {
	public static void main(String[] args) {
		Empregado e1 = new Empregado("joao", "jose", 500);
		Empregado e2 = new Empregado("jose", "joao", 900);
		
		System.out.println(e1.getSalarioAnual());
		System.out.println(e2.getSalarioAnual());
		e1.darAumento(0.01);
		e2.darAumento(0.01);
		System.out.println(e1.getSalarioAnual());
		System.out.println(e2.getSalarioAnual());
		
	}
}
