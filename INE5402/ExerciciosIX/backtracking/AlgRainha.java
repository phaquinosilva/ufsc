package backtracking;

public class AlgRainha {
    
    int[][] tabuleiro;
    int n; //
    public void imprimeResultado(int a[][]) {

		for (int i = 0; i < a.length; i++) { 
			for (int j = 0; j < a[0].length; j++) { 
				System.out.print(a[i][j] + " "); 
			}
			System.out.println();
		}
		
		System.out.println();
    }    
    
    //testa se uma posicao é valida
    public boolean ehSalvo(int linha, int coluna, int[][] tabuleiro) {
        int i, j;
        //checa a linha ate da coluna em questao (o resto ainda nao foi preenchido)
        for (i = 0; i < tabuleiro.length; i++) {
            //testa a linha para ver se tem alguma rainha
            if (tabuleiro[linha][i] == 1) {
                return false;
            }
            //testa a coluna para ver se ja tem alguma rainha
            if (tabuleiro[i][coluna] == 1) {
                return false;
            }
        }
        //checa a diagonal superior do lado esquerdo
        for (i = linha, j = coluna; i >= 0 && j >= 0; i--, j--) {
            if (tabuleiro[i][j] == 1) {
                return false;
            }
        }
        //checa a diagonal inferior do lado esquerdo
        for (i = linha, j = coluna; j >= 0 && i < tabuleiro.length; i++, j--) {
            if (tabuleiro[i][j] == 1) {
                return false;
            }
        }
        //testa diagonal superior do lado direito
        for (i = linha, j = coluna; i >= 0 && j < tabuleiro.length; i--, j++){
            if (tabuleiro[i][j] == 1) {
                return false;
            }
        }
        for (i = linha, j = coluna; i < tabuleiro.length && j < tabuleiro.length; i++, j++) {
            if (tabuleiro[i][j] == 1) {
                return false;
            }
        }
        return true;
    }
    
    //inicia o tabuleiro e as rainhas
    public void xRainhas(int n, int qtdeRainhas){
        //cria o tabuleiro e zera todas as posicoes
        tabuleiro = new int[n][n];
        for (int i = 0; i < n; i++) {
            for (int j = 0; j < n; j++) {
                tabuleiro[i][j] = 0;
            }
        }
        if (solucao(tabuleiro, 0, qtdeRainhas)) {
            imprimeResultado(tabuleiro);
        } else {
            System.out.print("nao encontrou solucao");
        }
    }

    public boolean solucao(int[][] tabuleiro,  int coluna, int n) {
        if (coluna >= n) { // parada --> todas as rainhas ja foram posicionadas
            return true;
        }
        //tenta colocar a rainha em cada linha
        for (int i = 0; i < tabuleiro.length; i++) {
        
            if (ehSalvo(i, coluna, tabuleiro)) {
                tabuleiro[i][coluna] = 1;
                if (solucao(tabuleiro, coluna + 1, n)) {
                    return true;
                }else{
                    tabuleiro[i][coluna] = 0; //backtrack
                }
            }
        }
        return false;
    }
}
