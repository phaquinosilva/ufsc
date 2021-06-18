import java.util.Scanner;

class IMC {
    public static void main(String[] args) {
        String nome;
        double peso, altura;
        Scanner entrada = new Scanner(System.in);
        nome = entrada.next();
        peso = entrada.nextDouble();
        altura = entrada.nextDouble();
        entrada.close();
        System.out.print(nome + "\n");
        System.out.printf("IMC = %.2f", (peso / (altura*altura)));
        System.out.println();
        
    }
}