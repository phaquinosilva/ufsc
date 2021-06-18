package backtracking;

public class AlgDado {
	
	int resultado[];
	
	public void lancarDados(int n) {
		resultado = new int[n+1];
		lancarDado(n);
	}
	
	public void lancarDado(int n) {
		if (n == 0) {
			imprimeResultado();
		} else {
			for (int k = 1; k <= 6; k++) {
				resultado[n] = k;
				lancarDado(n-1);
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
