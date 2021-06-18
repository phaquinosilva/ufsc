import java.util.Scanner;

public class Megasena {
	public static void main(String[] args) {
		Scanner in = new Scanner(System.in);
		
		int[] numeros = new int[61];

		for (int i = 1; i <= 10; i++) {
			System.out.printf("%da dezena: \n" , i);
			for (int j = 0; j < 6; j++) {
				numeros[in.nextInt()] += 1;
			}
		}
		in.close();
		int maisSorteado = 0;
		for (int i = 0; i < numeros.length; i++) {
			if (numeros[i] > maisSorteado) {
				maisSorteado = numeros[i];
			}
		}
		System.out.println("os numeros mais sorteados sao");
		for (int i = 0; i < 61; i++) {
			if (numeros[i] == maisSorteado) {
				System.out.println(i);
			}
		}
		System.out.println("os numeros nao sorteados sao: ");
		for (int i = 0; i < 61; i++) {
			if (numeros[i] == 0) {
				System.out.println("i");
			}
		}
	}
}
