package backtracking;

public class AlgQuadradoMagico {
	
	int linha = 0;
	int col = 0;
	
	public void imprimeResultado(int a[][]) {

		for (int i = 0; i < a.length; i++) { 
			for (int j = 0; j < a[0].length; j++) { 
				System.out.print(a[i][j] + " "); 
			}
			System.out.println();
		}
		
		System.out.println();
	}    
	
	//testa se a matriz ainda tem espacos vazios
	public boolean temVazio(int a[][]) { 
		for (int i = 0; i < a.length; i++) {
			for (int j = 0; j < a[0].length; j++) {
				if (a[i][j] == 0) {
					linha = i;
					col = j;
					return true;
				}
			}
		}
		return false;
	}
	
	
	//testa se o quadrado magico é valido
	public boolean ehValido(int a[][]) {
		
		if (temVazio(a)) { //ainda tem elementos pra preencher
			return false;
		} else {

			int sumCol = 0;
			int sumLine = 0;
			int sumDiag1 = 0;
			int sumDiag2 = 0;
			
			//encontra as somas da diagonal
			for (int i = 0; i < a.length; i++) {
				for (int j = 0; j < a.length; j++) {
					if (i == j) {
						sumDiag1 += a[i][j];
					}
					if (i+j == (a.length -1)) {
						sumDiag2 += a[i][j];
					}
				}
			}
			//encontra a soma da primeira linha	
			for (int j = 0; j < a[0].length; j++) {
				sumLine += a[0][j];
			}
			//encontra a soma da 1a coluna
			for (int i = 0; i < a.length; i++) {
				sumCol += a[i][0];
			}
			//agora testo cada uma das somas ja encontradas --> se forem diferentes, nao e valido
			if (sumLine != sumCol || sumLine != sumDiag1 || sumLine != sumDiag2) {
				return false;
			}else if (sumCol != sumLine || sumCol != sumDiag1 || sumCol != sumDiag2) {
				return false;
			}else if (sumDiag1 != sumDiag2 || sumDiag1 != sumCol || sumDiag1 != sumLine) {
				return false;
			}else if (sumDiag2 != sumDiag1 || sumDiag2 != sumCol || sumDiag2 != sumLine) {
				return false;
			}
			//testa se as somas das linhas s�o todas iguais
			for (int i = 0; i < a.length; i++) {
				int iSoma = 0;
				for (int j = 0; j < a[0].length; j++) {//soma os valores da linha
					iSoma += a[i][j];
				}
				if (iSoma != sumLine) { //se a soma de alguma das linha for diferente de sumLine, nao e valido
					return false;
				}
			}
			//testa se as colunas sao todas iguais
			for (int j = 0; j < a[0].length; j++) {
				int jSoma = 0;
				for (int i = 0; i < a.length; i++) { //soma os valores da coluna
					jSoma += a[i][j];
				}
				if (jSoma != sumCol) {
					return false;
				}
			}
			//enfim, se passou por todos os testes, o quadrado magico � valido
			return true;
		}
	}
		
	public boolean resolveQuadMagico(int a[][]) {
		if (ehValido(a)) {
			return true;
		} else if (!temVazio(a)) {
			return false;
		} else {
			for (int num = 1; num <= 100; num++) { //para numeros de 1 ate 1000, mas eu sugiro mudar pra 100, pq roda beeem mais rapido
				int i = linha;
				int j = col;
				a[i][j] = num;
				if(resolveQuadMagico(a)) {
					return true;
				}
				a[i][j] = 0;
			}
			return false;
		}
	}
	
	public void solucao(int a[][]) { //para retornar 0 quando nao � possivel resolver o quadrado magico
		if (resolveQuadMagico(a)) {
			imprimeResultado(a);
		} else {
			int[][] zero = new int[a.length][a.length];
			for (int k = 0; k < zero.length; k++) {
				for (int l = 0; l < zero.length; l++) {
					zero[k][l] = 0;
				}
			}
			imprimeResultado(zero);
		}
	}

}
