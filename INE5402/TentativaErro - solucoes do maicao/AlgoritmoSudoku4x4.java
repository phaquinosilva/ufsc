package tentativaErro;

public class AlgoritmoSudoku4x4 {
	private int tabuleiro[][];
	
	private boolean verificaTabuleiro() {
		boolean rep[] = new boolean[tabuleiro.length + 1];
		
		//Encontra repetidos linha
		for (int i = 0; i < tabuleiro.length; i++) {
			//Primeiro digo que nenhum número está repetido
			for (int k = 1; k <= tabuleiro.length; k++) {
				rep[k] = false;
			}

			//Para cada coluna da linha i, vejo quais números aparecem
			for (int j = 0; j < tabuleiro.length; j++) {
				if (rep[tabuleiro[i][j]]) { //Se o número da coluna j já repetiu antes, então retorno false
					return false;
				}
				rep[tabuleiro[i][j]] = true;
			}
		}

		//Encontra repetidos coluna
		for (int j = 0; j < tabuleiro.length; j++) {
			//Primeiro digo que nenhum número está repetido
			for (int k = 1; k <= tabuleiro.length; k++) {
				rep[k] = false;
			}

			//Para cada linha i d coluna j, vejo quais números aparecem
			for (int i = 0; i < tabuleiro.length; i++) {
				if (rep[tabuleiro[i][j]]) { //Se o número da linha i já repetiu antes, então retorno false
					return false;
				}
				rep[tabuleiro[i][j]] = true;
			}
		}
		
		//Testando os quadrados pequenos
		int nQuadrados = (int)Math.sqrt(tabuleiro.length); //Como a matriz é quadrada, sei que terá raiz(n) quadrados por linha e por coluna
		for (int iQ = 0; iQ < nQuadrados; iQ++) { //Numero de quadrados pequenos por linha
			for (int jQ = 0; jQ < nQuadrados; jQ++) { //Numero de quadrados pequenos por coluna
				
				//Primeiro digo que nenhum número está repetido
				for (int k = 1; k <= tabuleiro.length; k++) {
					rep[k] = false;
				}
				
				//Cada quadrado pequeno tem tamanho nQuadrados x nQuadrados
				for (int i = 0; i < nQuadrados; i++) {
					for (int j = 0; j < nQuadrados; j++) {
						int iNew = iQ * nQuadrados + i; //Calculo a linha com base em qual quadrado estou olhando
						int jNew = jQ * nQuadrados + j; //Calculo a coluna com base em qual quadrado estou olhando
						
						if (rep[tabuleiro[iNew][jNew]]) { //Se o número da linha e coluna iNew,jNew já apareceu, retorno false
							return false;
						}
						rep[tabuleiro[iNew][jNew]] = true;
						
						
					}
				}
				
				
			}
		}
		
		return true; //Se não houve nenhum repetido
	}
	
	public boolean jogarSudoku(int i, int j) { //Joga na coluna i e linha j
		if (i == tabuleiro.length) { //Se preenchi todas as linhas, entao terminou!
			return verificaTabuleiro();
		}
		
		
		int iNew; //Descubro a próxima posição a preencher
		int jNew;
		if (j + 1 == tabuleiro.length) {
			iNew = i+1;
			jNew = 0;
		} else {
			iNew = i;
			jNew = j+1;				
		}
		
		if (tabuleiro[i][j] != 0) { //Se já tem um número nesta posição, então tento a próxima 
			if (jogarSudoku(iNew, jNew)) {
				return true;
			}			
		} else {
			for (int k = 1; k <= tabuleiro.length; k++) { //Para cada número possivel de colocar naquela posição
				tabuleiro[i][j] = k; //Tento k

				if (jogarSudoku(iNew, jNew)) {
					return true;
				}
				
				tabuleiro[i][j] = 0; //Volto como estava antes, para tentar no futuro denovo
			}
		}
		
		return false;
	}
	
	private void imprimeMatriz(int a[][]) {
		int m = a.length; //Retorna a quantidade de linhas da matriz
		int n = a[0].length; //Descubro a quantidade de colunas verificando o tamanho de um vetor na linha 0
		
		
		System.out.println("Matriz " + n + "x" + m);
		
		//Abaixo apenas imprimo todos os valores da matriz
		for (int i = 0; i < m; i++) { //Para cada linha
			for (int j = 0; j < n; j++) { //Percorro todas as colunas da linha i
				System.out.print(a[i][j] + " "); //Imprimo os itens separados por espaço
			}
			System.out.println(); //Pulo de linha para imprimir a próxima linha
		}
		
		System.out.println();
	}
	
	public void sudoku(int tab[][]) {
		tabuleiro = tab;
		
		if (jogarSudoku(0, 0)) {
			System.out.println("Valido");
			imprimeMatriz(tabuleiro);
		} else {
			System.out.println("Invalido");
		}
	}
}
