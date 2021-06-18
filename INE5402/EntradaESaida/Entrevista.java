import java.util.Scanner;

public class Entrevista {
	public static void main(String[] args) {
		Scanner entrada = new Scanner(System.in);
		
		String[] mascOrFem = new String[2000];
		String[] simOuNao = new String[2000];
		double cntMASCandNAO, cntFEMandSIM, cntS, cntN;
		cntMASCandNAO = 0;
		cntFEMandSIM = 0;
		cntS = 0;
		cntN = 0;
		
		for (int i = 0; i < 2000; i++) {
			System.out.println("SEXO: ");
			mascOrFem[i] = entrada.next();
			System.out.println("RESPOSTA: ");
			simOuNao[i] = entrada.next();
			if(simOuNao[i] == "S") {
				cntS++;
				if (mascOrFem[i] == "F") {
					cntFEMandSIM++;
				}
			}else {
				if (mascOrFem[i] == "M") {
					cntMASCandNAO++;
				}
				cntN++;
			}
		}
		entrada.close();
		System.out.printf("qtde pessoas que disseram SIM: %d\n", cntS);
		System.out.printf("qtde pessoas que disseram NAO: %d\n", cntN);
		System.out.printf("percentagem mulheres que disseram SIM: %.2f%%\n", cntFEMandSIM/2000);
		System.out.printf("percentagem homens que disseram NAO: %.2f%%\n ", cntMASCandNAO/2000);
	}
	
	
}
