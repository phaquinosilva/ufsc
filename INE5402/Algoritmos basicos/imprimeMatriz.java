public void imprimeMatriz(int a[][]) {
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