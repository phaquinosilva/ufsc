import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import javax.swing.ImageIcon;
import javax.swing.JButton;

public class Peca extends Tabuleiro {
	protected int posicao;
	protected int ID;
	protected ImageIcon icon;
	
    public void setPosicao (int posicao) { 
    	this.posicao = posicao;
    }
    
    public int getPosicao() {
    	return posicao;
    }
    
    public int getID() {		
	return ID;
    }
    
    public Peca(int a) throws MalformedURLException { 
	super(a);
    }
}