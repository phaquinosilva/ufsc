package exercicios;

import java.util.Scanner;

public class Ex16 {
	public static void main (String[] args) {
		int N = new Scanner(System.in).nextInt();
		for (int i = 1; i < N; i ++) {
			if (N%i == 0) {
				System.out.print(i + ", ");
			}
		}
		System.out.print(N + ".");
	}
}
