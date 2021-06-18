package exercicios;

import java.util.Scanner;

public class Ex8 {
	
	public static void main (String[] args) {
		int lim = new Scanner(System.in).nextInt(), sum = 0;
		for (int i = 0; i < lim; i ++) {
			if (i%3 == 0 || i%5 == 0 || i%7 == 0) {
				sum += i;
			}
			if (i%8 == 0) {
				sum -= i;
			}
		}
		System.out.println(sum);
	}
}
