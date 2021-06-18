public boolean ehPrimo(int n){
    int cont = 0;
    for(int i = 1; i < n/2; i++){
        if(n%i == 0){
            cont++;
        }
    }
    if(cont == 1){
        return true;
    }
    return false;
}