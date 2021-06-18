package exercicios;

import java.util.Scanner;

public class Ex23 {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        double n1, n2;
        int com = 0;

        while (com != 5) {
            n1 = sc.nextDouble();
            n2 = sc.nextDouble();
            com = sc.nextInt();

            if (com == 1) {
                System.out.print(n1 + n2);
            } else if (com == 2) {
                System.out.print(n1 - n2);
            } else if (com == 3) {
                System.out.print(n1*n2);
            } else if (com == 4) {
                System.out.print(n1/n2);
            }
            System.out.println();
        }

        sc.close();
    }
}
