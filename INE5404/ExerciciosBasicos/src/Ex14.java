

import java.util.Scanner;

public class Ex14 {
	
	public static void main (String[] args) {
		int N, M, i, pot = 1;
		N = new Scanner(System.in).nextInt();
		M = new Scanner(System.in).nextInt();
		/*
		for (i = 0; i < M; i++) {
			pot = pot*N;
		}*/
		i = 0;
		while (i < M) {
			pot = pot*N;
			i++;
		}
		System.out.println(pot);
	}
}
