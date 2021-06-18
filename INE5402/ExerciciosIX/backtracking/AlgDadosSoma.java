package backtracking;

public class AlgDadosSoma {
	int resultado[];
	
	public void lancarDados(int n, int soma) {
		resultado = new int[n+1];
		lancarDado(n, soma);
	}
	
	public void lancarDado(int n, int soma) {
		if (n == 0) {
			if(soma == 0) {
				imprimeResultado();
			}
		} else {
			for (int k = 1; k <= 6; k++) {
				if (k <= soma) {
					resultado[n] = k;
					lancarDado(n-1, soma - k);
				}
			}
		}
	}
	
	public void imprimeResultado() {
		for (int i = 1; i < resultado.length; i++) {
			System.out.print(resultado[i] + " ");
		}
		System.out.println();
	}
	
}
