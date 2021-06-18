package exercicios;

import java.util.Scanner;

public class Ex15 {
	
	public static int fib(int n) {
		if (n == 0 || n == 1) {
			return 1;
		}
		return fib(n-1) + fib(n-2);
	}
	public static void main(String[] args) {
		int N = new Scanner(System.in).nextInt();
		for (int i = 0; i < N; i ++) {
			System.out.print(fib(i) + ",");
		}
		System.out.print(fib(N) + ".");
		
	}
}
