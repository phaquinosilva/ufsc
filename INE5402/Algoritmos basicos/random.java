import java.util.Random;

public int random(int inicio, int fim){
    Random rand = new Random(); //criamos um objeto pseudorandom da biblioteca padrao do java
    int randomN = rand.nextInt(fim) + inicio;
    return randomN;
}