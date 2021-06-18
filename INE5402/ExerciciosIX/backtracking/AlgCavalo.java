package backtracking;

public class AlgCavalo {
	
	//imprime a matriz no final
	public void imprimeResultado(int a[][]) {
		for (int i = 0; i < a.length; i++) { 
			for (int j = 0; j < a[0].length; j++) { 
				System.out.print(a[i][j] + " "); 
			}
			System.out.println();
		}
		System.out.println();
	}    
	
	//testa se a posicao ainda nao foi usada
	public boolean ehValida(int[][] tabuleiro, int i, int j) {
		return (i >= 0 && j >= 0 && i < tabuleiro.length && j < tabuleiro.length && tabuleiro[i][j] == -1);
	}
	
	public void passeio(int n, int linhaInicio, int colunaInicio) {
		
		//cria o tabuleiro nxn
		int[][] tabuleiro = new int[n][n];
		//coloca todas as posicoes to tabuleiro como nao usadas
		for (int i = 0; i < n; i++) {
			for (int j = 0; j < n; j++) {
				tabuleiro[i][j] = -1;
			}
		}
		//define a posicao inicial do cavalo
		tabuleiro[linhaInicio][colunaInicio] = 0;
		
		//define os possiveis movimentos de um cavalo
		int[] movLinha = { 1, 1, 2, 2, -1, -1, -2, -2 };
		int[] movColuna = { 2, -2, 1, -1, -2, 2, -1, 1 };
		
		if (resolvePasseio(1, linhaInicio, colunaInicio, tabuleiro, movLinha, movColuna)) {
			imprimeResultado(tabuleiro);
		} else {
			System.out.println("n�o tem solu��o");
		}
	}
	
	public boolean resolvePasseio(int passo, int linha, int coluna, int[][] tabuleiro, int[] movLinha, int[] movColuna) {
		
		int proxLinha, proxColuna;
		
		if (passo == (tabuleiro.length * tabuleiro.length)) {
			return true;
		} else {
			//testa todos os 8 caminhos possiveis para aquela posicao
			for (int n = 0; n < 8; n++) {
				proxLinha = linha + movLinha[n];
				proxColuna = coluna + movColuna[n];
				if (ehValida(tabuleiro, proxLinha, proxColuna)) {
					tabuleiro[proxLinha][proxColuna] = passo;
					if(resolvePasseio(passo + 1, proxLinha, proxColuna, tabuleiro, movLinha, movColuna)) {
						return true;
					} else {
						tabuleiro[proxLinha][proxColuna] = -1;//backtracking
					}
				}
			}
		}
		return false;
	}
	
}