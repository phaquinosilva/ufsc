package exercicios;

import java.util.Scanner;
//4
public class Ex4 {
	public static void main (String[] args) {
		int num = new Scanner(System.in).nextInt();
		int i;
		if (num > 2) {
			i = 2;
		} else {
			i = 0;
		}
		while (i < (num - 1)) {
			System.out.print(i + ", ");
			i += 2;
		}
		System.out.print(i + ".");
	}
}
