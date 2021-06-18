package exercicios;

import java.util.Scanner;
//1
public class Ex1 {
	
	public static void main(String[] args) {
		int num = new Scanner(System.in).nextInt();
		if (num%2 == 0) {
			System.out.println("par");
		} else {
			System.out.println("impar");
		}
	}
}
