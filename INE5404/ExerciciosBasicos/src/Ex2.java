
import java.util.Scanner;
//2
public class Ex2 {
	public static void main (String[] args) {
		int a, b;
		a = new Scanner(System.in).nextInt();
		b = new Scanner(System.in).nextInt();
		
		if (a != b) {	
			if (a > b) {
				System.out.printf("%d é o maior\n%d é o menor", a, b);
			} else if (a < b) {
				System.out.printf("%d é o maior\n%d é o menor", b, a);
			}
		} else {
			System.out.println("os números são iguais");
		}
	}
}
