import java.net.MalformedURLException;

public class PecaJ2 extends Peca {
	
    public PecaJ2(int ID, int a) throws MalformedURLException{
	    super(a);
	    this.ID=ID;
	    posicao = 0;
	}
	
	private int[] caminho2 = new int[]{-2, 11, 8, 5, 2, 1, 4, 7, 10, 13, 16, 17, 20, 19, 18, 15, 16, 13, 10, 7, 4, 1, 2, 5, 8, 11, 99};//28 posicoes, contando -1 e 99
	
	public int[] getCaminho() {
    	return caminho2;
	}
}