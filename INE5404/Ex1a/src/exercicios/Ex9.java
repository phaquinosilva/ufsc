package exercicios;

import java.util.Scanner;

public class Ex9 {
	public static void main (String[] args) {
		int a = new Scanner(System.in).nextInt();
		int b = new Scanner(System.in).nextInt();
		int sum = 0, qtd = Math.abs(a-b);
		if (a > b) {
			for (int i = b; i <= a; i++) {
				sum += i;
			}
		} else if (a < b) {
			for (int i = a; i <= b; i++) {
				sum += i;
			}
		} else {
			sum = a + b;
			qtd = 2;
		}
		System.out.printf("soma = %d\nmedia = %d", sum, (sum/qtd));
	}
}
