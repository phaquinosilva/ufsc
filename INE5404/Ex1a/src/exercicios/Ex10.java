package exercicios;

import java.util.Scanner;

public class Ex10 {
	public static void main (String[] args) {
		int a = new Scanner(System.in).nextInt();
		int b = new Scanner(System.in).nextInt();
		int sum = 0, qtd = 0;
		if (a > b) {
			for (int i = b; i <= a; i++) {
				if (i%2 != 0) {
					sum += i;
					qtd += 1;
				}
			}
		} else if (a < b) {
			for (int i = a; i <= b; i++) {
				if (i%2 != 0) {
					sum += i;
					qtd += 1;
				}
			}
		} else {
			if (a%2 != 0 && b%2 != 0) {
				sum = a + b; 
			}
			qtd = 2;
		}
		System.out.printf("media = %d\n", (sum/qtd));
		if ((sum/qtd)%2 != 0) {
			System.out.println("impar");
		} else {
			System.out.println("par");
		}
	}
}
