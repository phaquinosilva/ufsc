

import java.util.Scanner;

public class Ex22 {
    public static void main(String[] args) {
        double a, b;
        int temp = 20;
        a = new Scanner(System.in).nextDouble();
        b = new Scanner(System.in).nextDouble();
        while (a >= b) {
            a += 2;
            b += 3.5;
            temp++;
        }
        System.out.print(temp);
    }
}
