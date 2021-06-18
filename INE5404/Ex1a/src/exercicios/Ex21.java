package exercicios;

import java.util.Scanner;

public class Ex21 {
    public static void main(String[] args) {
        double soma = 0, med, maior = 0, menor = 100000;
        int tmp = 1, cnt = 0;
        while (tmp != 0) {
            
            if (tmp > maior) {
                maior = tmp;
            }
            if (tmp < menor) {
                menor = tmp;
            }
            tmp = new Scanner(System.in).nextInt();
            soma += tmp;
            cnt++;
            med = soma/cnt;
            System.out.printf("soma: %f\nquantidade: %d\nmedia: %.2f\nmaior: %f\nmenor: %f\n", soma, cnt, med, maior, menor);
        }
    }
}