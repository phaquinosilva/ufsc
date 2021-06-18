package exercicios;

import java.util.Scanner;

public class Ex11 {
	public static void main (String[] args) {
		double n1, n2, n3;
		n1 = new Scanner(System.in).nextDouble();
		n2 = new Scanner(System.in).nextDouble();
		n3 = new Scanner(System.in).nextDouble();
		
		double med = (n1 + n2+ n3)/3;
		
		if (med < 3) {
			System.out.println("reprovado");
		} else if (med < 5.75) {
			System.out.println("exame");
		} else {
			System.out.println("aprovado");
		}
	}
}
