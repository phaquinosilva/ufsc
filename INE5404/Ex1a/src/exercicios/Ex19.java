package exercicios;

import java.util.Scanner;

public class Ex19 {
	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		double med = 0;
		int cnt = 0;
		int tmp = 1;
		while (tmp != 0) {
		    tmp = sc.nextInt();
			med += tmp;
			cnt++;		
		}
		System.out.println(med/cnt);
	}
}
