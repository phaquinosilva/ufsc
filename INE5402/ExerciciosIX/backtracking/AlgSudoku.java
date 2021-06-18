package backtracking;

public class AlgSudoku { 
    
	public void imprimeResultado(int a[][]) {

		for (int i = 0; i < a.length; i++) { 
			for (int j = 0; j < a[0].length; j++) { 
				System.out.print(a[i][j] + " "); 
			}
			System.out.println();
		}
		
		System.out.println();
    }    
    
    
    //testa se o numero que queremos colocar numa posicao e valido
    public boolean ehSalvo (int a[][], int linha, int coluna, int num) {
        int caixaLinha = linha - linha%3;
        int caixaColuna = coluna - coluna%3;
        int i, j;
        //testa as caixas
        for (i = 0; i < 3; i++) {
        	for (j = 0; j < 3; j++) {
        		if (a[caixaLinha + i][caixaColuna + j] == num) {
        			return false;
        		}
        	}
        }        
		for (i = 0; i < 9; i++) {
            //testa a coluna
            if (num == a[i][coluna]) {
				return false;
            }
            //testa a linha
            if (num == a[linha][i]) {
                return false;
            }
        }
		return true;
    }
     
    public boolean resolveSud(int a[][]) {
       
    	//verifica se tem algum espaco vazio e guarda sua posicao
    	int i = 0, j = 0;
        boolean temVazio = false;
        for (int ii = 0; ii < a.length; ii++) {
            for (int jj = 0; jj < a.length; jj++) {
                if (a[ii][jj] == 0) {
                    temVazio = true;
                    i = ii;
                    j = jj;
                }
            }
        }
    	
    	
    	if (!temVazio) {
            return true;
    	}
    	
        for (int num = 1; num < 10; num++) {
        	
            if (ehSalvo(a, i, j, num)) {
            	a[i][j] = num;
            	
                if (resolveSud(a)) {
                    return true;
                }
                
                a[i][j] = 0; // backtrack 
            }
        }
        
        return false;
    }

    public void solucao(int[][] a) {
        if (resolveSud(a)) {
            imprimeResultado(a);
        } else {
            System.out.println("nao foi possivel resolver");
        }
    }

}