import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import javax.swing.ImageIcon;

public class PecaJ1 extends Peca {
	
	public PecaJ1(int ID, int a) throws MalformedURLException{
	    super(a);
	    this.ID=ID;
	    posicao = 0;
	}
	
	private int[] caminho1 = new int[]{-1, 9, 6, 3, 0, 1, 4, 7, 10, 13, 16, 15, 18, 19, 20, 17, 16, 13, 10, 7, 4, 1, 0, 3, 6, 9, 99}; //28 posicoes, contando -1 e 99
	
	public int[] getCaminho() {
    	return caminho1;
	}
}