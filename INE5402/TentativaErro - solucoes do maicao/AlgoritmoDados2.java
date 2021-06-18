package tentativaErro;

public class AlgoritmoDados2 {

	private int resultado[];
	
	private void imprimeResultados() {
		for (int i = 1; i < resultado.length; i++) {
			System.out.print(resultado[i] + " ");
		}
		System.out.println();
	}
	
	private void lancarDado(int n, int sum) {
		if (n == 0) { //Quando não houverem mais dados para lançar 
			if (sum == 0) { //e não resta nada para somar
				imprimeResultados();
			}
		} else { //Caso n > 0, então há dados para lançar
			for (int i = 1; i <= 6; i++) { //Para cada resultado possível ao lançar o dado N
				if (i <= sum) { //Apenas uso os valores que não ultrapassem a soma dos dados estabelecida
					resultado[n] = i; //Guardo o resultado no vetor
					lancarDado(n-1, sum-i); //Lanço o dado N-1, com soma descontando o dado atual
				}
			}
		}
	}
	
	public void lancarDados(int n, int sum) {
		resultado = new int[n+1]; //Crio um vetor de n+1 posições, pois o vetor inicia na posição 0
		lancarDado(n, sum); //Começo a lançar os dados, pelo n e com soma sum
	}
}
