

import java.util.Scanner;
//6
public class Ex6 {
	
	public static void main (String[] args) {	
		int num = new Scanner(System.in).nextInt();
		int i = 1, sum = 0;
		while (i < num) {
			if (i%3 == 0) {
				sum += i;
			}
			i++;
		}
		System.out.println(sum);
	}
}
