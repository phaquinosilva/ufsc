package exercicios;

import java.util.Scanner;

public class Ex12 {
	
	public static boolean ehPrimo(int n) {
		int cnt = 0;
		for (int i = 1; i <= n/2; i++) {
			if (n%i == 0) {
				cnt += 1;
			}
		}
		if (cnt != 1) {
			return false;
		}
		return true;
	}
	public static void main(String[] args) {
		int n = new Scanner(System.in).nextInt();
		if (ehPrimo(n)) {
			System.out.println("é primo");
		} else {
			System.out.println("não é primo");
		}
	}
}
