package exercicios;

import java.util.Scanner;
//5
public class Ex5 {
	public static void main (String[] args) {
		int num = new Scanner(System.in).nextInt();
		int prod = 1, i = 1;
		while (i < num) {
			prod = prod*i;
			i++;
		}
		System.out.println(prod);
	}
}
