import java.util.Scanner;

public class MainFuncionario {
    public static void main(String[] args) {
        Scanner entrada = new Scanner(System.in);

        Funcionario[] lstFuncionarios = new Funcionario[10];
        double soma = 0;
        for (int i = 0; i < 10; i++) {
            lstFuncionarios[i] = new Funcionario();
            System.out.print("Insira o nome do funcionario: ");
            lstFuncionarios[i].setNome(entrada.next());
            System.out.println("Insira o valor por hora: ");
            lstFuncionarios[i].setValor(entrada.nextDouble());
            System.out.println("Insira a quantidade de horas trabalhadas: ");
            lstFuncionarios[i].setHoras(entrada.nextInt());
            System.out.println("Salario = " + lstFuncionarios[i].getSalario());
            soma += lstFuncionarios[i].getSalario();
        }

        System.out.println("Funcionarios com salario acima da media: ");
        for (int i = 0; i < 10; i++) {
            if (lstFuncionarios[i].getSalario() > (soma/10)) {
                System.out.println(lstFuncionarios[i].getNome());
            }
        }
        
        entrada.close();
    }
}