package backtracking;

public class Main {
    public static void main(String[] args) {
        /*
        int[] b = {1,2,3};
        AlgSubconjuntos a1 = new AlgSubconjuntos();
        a1.inicia(b);


        /* QUADRADO MAGICO FUNCIONANDO
         
        int[][] a = {
            {0,12,12},
            {16,10,0},
            {8, 0, 0}
        };
        AlgQuadradoMagico a1 = new AlgQuadradoMagico();
        a1.solucao(a);
        
        /*
        AlgCavalo a1 = new AlgCavalo();
        a1.passeio(5, 0, 0);
        */
        /*
        AlgRainha a1 = new AlgRainha();
        a1.xRainhas(3,3);
        */
    	 int[][] sud = {
    	            {1, 0, 3, 0, 0, 0, 5, 0, 9},
    	            {0, 0, 2, 1, 0, 9, 4, 0, 0},
    	            {0, 0, 0, 7, 0, 4, 0, 0, 0},
    	            {3, 0, 0, 5, 0, 2, 0, 0, 6},
    	            {0, 6, 0, 0, 0, 0, 0, 5, 0},
    	            {7, 0, 0, 8, 0, 3, 0, 0, 4},
    	            {0, 0, 0, 4, 0, 1, 0, 0, 0},
    	            {0, 0, 9, 2, 0, 5, 8, 0, 0},
    	            {8, 0, 4, 0, 0, 0, 1, 0, 7}
    	        };
    	 
        AlgSudoku a1 = new AlgSudoku();
        a1.solucao(sud);
        
    }
}