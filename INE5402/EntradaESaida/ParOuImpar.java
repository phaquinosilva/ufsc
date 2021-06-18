import java.util.Scanner;

public class ParOuImpar {
    public static void main(String[] args) {
        Scanner in = new Scanner(System.in);
        int i;
        int[] numeros = new int[10];
        for (i = 0; i < 10; i++) {
            numeros[i] = in.nextInt();
        }
        in.close();
        System.out.println("Numeros pares:");
        for (i = 0; i <10; i++){
            if (numeros[i]%2 == 0) {
                System.out.println (numeros[i]);
            }
        }
        System.out.println("Numeros impares:");
        for (i = 0; i < 10; i++) {
            if (numeros[i]%2 != 0) {
                System.out.println(numeros[i]);
            }
        }
    }
}