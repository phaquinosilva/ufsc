public int[][] multiMatrix(int a[][], int b[][]){
    if(a.length == b[0].length){ //testa se as duas matrizes sao compativeis para multiplicacao
        int[][] c = new int[a.length][b[0].length]; //cria a matriz produto com as linhas de 'a' e colunas de 'b'
            for(int i = 0; i < a.length; i++){
            for(int j = 0; j < b[0].length; j++){
                c[i][j] = 0; //zera a matriz produto em preparacao para receber os valores
                /*é necessario zerar a matriz, por que usamos um += para incrementar o valor de
                *posicao da matriz resultante;
                */
            }
        }
        for(int i = 0; i < a.length; i++){ //percorremos as linhas de 'a'; e
            for(int j = 0; j < b[0].length; j++){ //colunas de 'b'; e
                for(int k = 0; k < a[0].length; k++){ //igualamos as colunas de 'a' e linhas de 'b'
                    c[i][j] += a[i][k] * b[k][j]; //incrementamos cada valor na posicao correspondente de 'c'
                }
            }
        }
        return c;
    }   
    /*se não for possível multiplicar as duas matrizes,
    * o algoritmo retorna a primeira matriz de entrada
    */
    System.out.println("não é possivel multiplicar as matrizes");
    return a;
}