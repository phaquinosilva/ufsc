package tentativaErro;

public class Main {
	public static void main(String args[]) {
		//AlgoritmoDados algDados = new AlgoritmoDados();
		//algDados.lancarDados(3);
		
		//AlgoritmoDados2 algDados2 = new AlgoritmoDados2();
		//algDados2.lancarDados(3, 7);
		
		
		//AlgoritmoSudoku4x4 algSudoku4x4 = new AlgoritmoSudoku4x4();
/*		int tabA[][] = { 
			       { 1, 2, 3, 4 },
			       { 3, 4, 1, 2 },
			       { 2, 3, 4, 1 },
			       { 4, 1, 2, 3 }
			     };*/
		
		/*int tabA[][] = { 
	       { 1, 0, 3, 4 },
	       { 3, 0, 0, 2 },
	       { 2, 3, 0, 1 },
	       { 4, 1, 2, 3 }
	     };
		algSudoku4x4.sudoku(tabA);*/
		
		//AlgoritmoSubconjuntos algSubconjuntos = new AlgoritmoSubconjuntos();
		//algSubconjuntos.subconjuntos(new int[] {1,2,3});
		
		int rainhas[][] = new int[4][4];
		
		AlgoritmoRainhas algRainhas = new AlgoritmoRainhas();
		algRainhas.rainhas(rainhas, 5);
	}
}
