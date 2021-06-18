public boolean buscaBin(int[] a, x){
    int meio;
    int inicio = 0;
    int fim = a.length - 1;
    while(inicio <= fim){
        meio = (inicio + fim)/2;
        if(x == a[meio]){
            return true;
        }
        if(x < a[meio]){
            fim = meio - 1;
        }else{
            inicio = meio + 1;
        }
    }
    return false;
}