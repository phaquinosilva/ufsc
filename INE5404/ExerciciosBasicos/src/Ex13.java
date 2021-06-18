

import java.util.Scanner;

public class Ex13 {
	
	public static void main (String[] args) {
		int n = new Scanner(System.in).nextInt();
		int fat = 1;
		for (int i = 1; i <= n; i++) {
			fat = fat*i;
		}
		System.out.println(fat);
	}
}
