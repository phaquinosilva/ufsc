import java.util.Scanner;

public class Aluno {
    
    public static void main(String[] args) {
            
        Scanner entrada = new Scanner(System.in);
        
        String[] nomes = new String[10];
        double[] nota1 = new double[10];
        double[] nota2 = new double[10];
        double[] nota3 = new double[10];
        double[] media = new double[10];

        for (int i = 0; i < 10; i++) {
        	System.out.println("insira o nome do aluno:");
            nomes[i] = entrada.next();
            System.out.println("insira a n1, n2 e n3");
            nota1[i] = entrada.nextDouble();
            nota2[i] = entrada.nextDouble();
            nota3[i] = entrada.nextDouble();
            media[i] = (nota1[i] + nota2[i] + nota3[i])/3;
        }

        entrada.close();
        double mediaTurma = 0;
        for (int i = 0; i < 10; i++) {
            System.out.printf("NOME: %s\nMEDIA: %.1f", nomes[i], media[i]);
            if (media[i] >= 6) {
                System.out.println("APROVADO\n");
            }else {
            	System.out.println("REPROVADO");
            }
            mediaTurma += media[i];
        }
        mediaTurma = mediaTurma/10;
        System.out.printf("MEDIA TURMA: %.1f\n", mediaTurma);
        System.out.println("Alunos acima da media da turma:");
        for (int i = 0; i < 10; i++) {
            if (media[i] >= mediaTurma) {
                System.out.println(nomes[i]);
            }
        }
    }
}