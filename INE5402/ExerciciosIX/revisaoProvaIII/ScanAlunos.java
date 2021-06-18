package revisaoProvaIII;

import java.util.Scanner;

public class ScanAlunos {
	public static void main(String[] args) {
		
		Scanner in = new Scanner(System.in);
		
		System.out.println("Insira o numero de alunos:");
		int n = in.nextInt();
		
		String[] nome = new String[n];
		int[] idade = new int[n];
		double[] n1 = new double[n];
		double[] n2 = new double[n];
		double[] n3 = new double[n];
		double[] media = new double[n];
		double mediaTurma = 0;
		
		for (int i = 0; i < n; i++) {
			System.out.println("Insira o nome do aluno:");
			nome[i] = in.next();
			System.out.println("Insira a idade:");
			idade[i] = in.nextInt();
			System.out.println("Insira as notas do aluno");
			n1[i] = in.nextDouble();
			n2[i] = in.nextDouble();
			n3[i] = in.nextDouble();
			media[i] = (n1[i] + n2[i] + n3[i])/3;
			mediaTurma += media[i];
		}
		
		in.close();
		
		mediaTurma = mediaTurma/n;
		
		for (int i = 0; i < n; i++) {
			System.out.printf("nome: %s\n", nome[i]);
			System.out.printf("idade: %d\n", idade[i]);
			System.out.printf("notas: %.2f, %.2f, %.2f\n", n1[i], n2[i], n3[i]);
			System.out.printf("media: %.2f\n", media[i]);
			if (media[i] >= 6) {
				System.out.println("Aprovado");
			} else if (media[i] >= 3){
				System.out.println("Recuperacao");
			} else {
				System.out.println("Reprovado");
			}
		}
		System.out.printf("media da turma: %.2f\n", mediaTurma);
		System.out.println("Alunos com nota acima da media da turma:");
		for (int i = 0; i < n; i++) {
			if (media[i] >= mediaTurma) {
				System.out.println(nome[i]);
			}
		}
		
	}
}
