package tentativaErro;

public class AlgoritmoDados {

	private int resultado[];
	
	private void imprimeResultados() {
		for (int i = 1; i < resultado.length; i++) {
			System.out.print(resultado[i] + " ");
		}
		System.out.println();
	}
	
	private void lancarDado(int n) {
		if (n == 0) { //Quando não houverem mais dados para lançar, apenas imprimo o resultado
			imprimeResultados();
		} else { //Caso n > 0, então há dados para lançar
			for (int i = 1; i <= 6; i++) { //Para cada resultado possível ao lançar o dado N
				resultado[n] = i; //Guardo o resultado no vetor
				lancarDado(n-1); //Lanço o dado N-1
			}
		}
	}
	
	public void lancarDados(int n) {
		resultado = new int[n+1]; //Crio um vetor de n+1 posições, pois o vetor inicia na posição 0
		lancarDado(n); //Começo a lançar os dados, pelo n
	}
}
