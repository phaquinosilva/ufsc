public int[] InverteVetor(int a[]){
    for(int i = 0; i < (a.length/2); i++){ //o i vai até a metade, para evitar que invertamos o vetor duas vezes
        int temp = a[i]; //usamos uma variavel temporaria, para armazenar o valor da primeira possicao
        a[i] = a[a.length - 1 - i];
        a[a.length - 1 - i] = temp;
    }
    return a;
}