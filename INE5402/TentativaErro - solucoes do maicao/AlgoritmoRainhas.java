package tentativaErro;

public class AlgoritmoRainhas {
	private int l[]; //Linha para a rainha x
	private int c[]; //Coluna para a rainha x
	private int a[][];
	private int qtdeRainhas;
	
	private boolean sucesso() {
		boolean rainhaLinha[] = new boolean[a.length];
		boolean rainhaColuna[] = new boolean[a.length];
		
		for (int i = 1; i <= qtdeRainhas; i++) {
			if (rainhaLinha[l[i]]) { //Se já há alguma rainha na mesma linha da rainha i
				return false;
			}
			rainhaLinha[l[i]] = true;
		}
		
		for (int i = 1; i <= qtdeRainhas; i++) {
			if (rainhaColuna[c[i]]) { //Se já há alguma rainha na mesma coluna da rainha i
				return false;
			}
			rainhaColuna[c[i]] = true;
		}
		
		for (int i = 1; i <= qtdeRainhas; i++) {
			for (int j = i+1; j <= qtdeRainhas; j++) { //Vejo se a rainha i e j estão na mesma diagonal
				if (Math.abs(l[i] - l[j]) == Math.abs(c[i] - c[j])) {
					return false;
				}
			}
		}
		
		return true;
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
	
	private boolean colocaRainha(int x, int iX, int jX) { //Coloco só no restante da matriz
		
		if (x == 0) { //Se não há nenhuma rainha para colocar, entao verifico se todas estão OK
			if (sucesso()) {
				//Imprimo a posição das rainhas
				imprimeMatriz(a);
				return true;
			}
			return false;
		}
		
		for (int i = iX; i < a.length; i++) {
			for (int j = jX; j < a.length; j++) { //Para cada posição possível de colocar jX
				l[x] = i; //Digo qual é a linha e coluna da rainha x
				c[x] = j;
				
				a[i][j] = x; //Coloco a rainha x na linha i e coluna j 
				
				if (colocaRainha(x-1, i, j+1)) { //Tento colocar a rainha x-1, na próxima coluna da linha i, se j > que tamanho irá tentar na 0
					return true;
				}
				
				a[i][j] = 0; //Removo a rainha x da linha i e coluna j
			}
			jX = 0;
		}
		
		return false;
	}
	
	//n é a dimensão da matriz
	public void rainhas(int a[][], int qtdeRainhas) {
		this.a = a;
		this.qtdeRainhas = qtdeRainhas;
		
		l = new int[qtdeRainhas+1];
		c = new int[qtdeRainhas+1];
		
		if (!colocaRainha(qtdeRainhas, 0,0)) {
			System.out.println("Impossivel!");
		} else {
			System.out.println("Possível!");
		}
	}
	
}
