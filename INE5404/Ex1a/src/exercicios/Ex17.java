package exercicios;

import java.util.Scanner;

public class Ex17 {
	public static void main (String[] args) {
		String[] num0a19 = {"", "um", "dois", "três", "quatro", "cinco", "seis", "sete",
				"oito", "nove", "dez", "onze", "doze", "treze", "quatorze", "quinze", "dezesseis",
				"dezessete", "dezoito", "dezenove"};
		String[] numDezena = {"", "", "vinte", "trinta", "quarenta", "cinquenta", "sessenta",
				"setenta", "oitenta", "noventa", "cem"};
		String[] numCent = {"", "cento", "duzentos", "trezentos", "quatrocentos", "quinhentos",
				"seiscentos", "setecentos", "oitocentos", "novecentos", "mil"};
		
		int N = new Scanner(System.in).nextInt();
		
		if (N/1000 >= 20) {
			System.out.print(numDezena[N/10000] + " ");
			N = N%10000;
			if (N/1000 != 0) {
				System.out.print("e " + num0a19[N/1000] + " ");
			}
			N = N%1000;
		} else {
			if (N/1000 != 1) {
				System.out.print(num0a19[N/1000] + " ");
				
			}
			N = N%1000;	
		}
		System.out.print("mil");
		if (N != 0) {
			if (N%100 != 0) {
				System.out.printf(" %s e ", numCent[N/100]);
				N = N%100;
				if (N < 20) {
					System.out.printf("%s",num0a19[N]);
				} else {
					System.out.printf("%s", numDezena[N/10]);
					N = N%10;
					if (N != 0) {
						System.out.printf(" e %s", num0a19[N]);
					}
				}
			} else {
				if (N == 100) {
					System.out.printf(" e %s", numDezena[10]);
				} else {
					System.out.printf(" e %s", numCent[N/100]);
				}
			}
		
		}
	}
}
