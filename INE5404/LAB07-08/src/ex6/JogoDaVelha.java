package ex6;

public class JogoDaVelha {
	private char[][] tabuleiro = new char[3][3];
	private String[] control = {"vazia", "jogador 1", "jogador 2"};
	
	public boolean terminou() {
		for (int i = 0; i < tabuleiro.length;i++) {
			if (tabuleiro[i][0] == tabuleiro[i][1] && tabuleiro[i][1] == tabuleiro[i][2]) {
				return true;
			} else if (tabuleiro[0][i] == tabuleiro[1][i] && tabuleiro[1][i] == tabuleiro[2][i]) {
				return true;
			}
		}
		if (tabuleiro[0][0] == tabuleiro[1][1] && tabuleiro[1][1] == tabuleiro[2][2]) {
			return true;
		} else if (tabuleiro[0][2] == tabuleiro[1][1] && tabuleiro[1][1] == tabuleiro[2][0]) {
			return true;
		} else {
			return false;
		}
	}
	
	
}
