

import java.util.Scanner;

public class Ex20 {
    public static void main(String[] args) {
        int valor = new Scanner(System.in).nextInt();
        if (valor >= 100) {
            System.out.printf("%d notas de 100\n", valor/100);
            valor = valor%100;
        }
        if (valor >= 50) {
            System.out.printf("%d notas de 50\n", valor/50);
            valor = valor%50;
        }
        if (valor >= 20) {
            System.out.printf("%d notas de 20\n", valor/20);
            valor = valor%20;
        }
        if (valor >= 10) {
            System.out.printf("%d notas de 10\n", valor/10);
            valor = valor%10;
        }
        if (valor >= 5) {
            System.out.printf("%d notas de 5\n", valor/5);
            valor = valor%5;
        }
        if (valor >= 2) {
            System.out.printf("%d notas de 2\n", valor/2);
            valor = valor%2;
        }
        System.out.printf("%d moedas de 1", valor);
    }
}
