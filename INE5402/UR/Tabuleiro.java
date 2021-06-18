import java.net.MalformedURLException;
import java.net.URL;
import javax.swing.ImageIcon;
import javax.swing.JButton;

public class Tabuleiro extends JButton {
	
	private URL url;
	private ImageIcon icon;
	protected int ID2;
	
	Tabuleiro(int a) throws MalformedURLException{
	    	
			ID2 = a;
			
	    	if (a == 0){
			url = Jogo.class.getResource("/resources/cor1.png");
	    	}
	    	else if (a == 1) {
			url = Jogo.class.getResource("/resources/olhodomilenio1.png");
		}
		else if (a == 2){
			url = Jogo.class.getResource("/resources/negro.png");
		}
		else if (a == 3){
			url = Jogo.class.getResource("/resources/francaNegro.png");
		}
		else if (a == 4){
			url = Jogo.class.getResource("/resources/englandNegro.png");
		}
		else if (a == 5){
			url = Jogo.class.getResource("/resources/franca.png");//PecaJ1
		}
		else if (a == 6) {
		    	url = Jogo.class.getResource("/resources/england.png");//PecaJ2
		}
		icon = new ImageIcon(url);
	}
	
	public void mostrarIcone() {
		setIcon(icon);
	}
	
	public void esconderIcone() {
		setIcon(null);
	}
	
	public void setImagem(int a) {
		ID2 = a;
		if (a == 0){
			url = Jogo.class.getResource("/resources/cor1.png");
	    	}
	    	else if (a == 1) {
			url = Jogo.class.getResource("/resources/olhodomilenio1.png");
		}
		else if (a == 2){
			url = Jogo.class.getResource("/resources/negro.png");
		}
		else if (a == 3){
			url = Jogo.class.getResource("/resources/francaNegro.png");
		}
		else if (a == 4){
			url = Jogo.class.getResource("/resources/englandNegro.png");
		}
		else if (a == 5){
			url = Jogo.class.getResource("/resources/franca.png");//PecaJ1
		}
		else if (a == 6) {
		    	url = Jogo.class.getResource("/resources/england.png");//PecaJ2
		}
		
		icon = new ImageIcon(url);
	}
		
	public int getID2() {
		return ID2;
	}
	
	public void ibagem(int x, int y) {
		if (x == 3) {
			switch(y) {
			case 1: url = Jogo.class.getResource("/resources/francaNegro1.png");
					break;
			case 2: url = Jogo.class.getResource("/resources/francaNegro2.png");
					break;
			case 3: url = Jogo.class.getResource("/resources/francaNegro3.png");
					break;
			case 4: url = Jogo.class.getResource("/resources/francaNegro4.png");
					break;
			case 5: url = Jogo.class.getResource("/resources/francaNegro5.png");
					break;
			case 6: url = Jogo.class.getResource("/resources/francaNegro6.png");
					break;
			case 7: url = Jogo.class.getResource("/resources/francaNegro7.png");
			}
		}
		else if (x == 4) {
			switch(y) {
			case 1: url = Jogo.class.getResource("/resources/englandNegro1.png");
					break;
			case 2: url = Jogo.class.getResource("/resources/englandNegro2.png");
					break;
			case 3: url = Jogo.class.getResource("/resources/englandNegro3.png");
					break;
			case 4: url = Jogo.class.getResource("/resources/englandNegro4.png");
					break;
			case 5: url = Jogo.class.getResource("/resources/englandNegro5.png");
					break;
			case 6: url = Jogo.class.getResource("/resources/englandNegro6.png");
					break;
			case 7: url = Jogo.class.getResource("/resources/englandNegro7.png");
					break;
			}
		}
		else if (x == 5) {
			switch(y) {
			case 1: url = Jogo.class.getResource("/resources/franca1.png");
					break;
			case 2: url = Jogo.class.getResource("/resources/franca2.png");
					break;
			case 3: url = Jogo.class.getResource("/resources/franca3.png");
					break;
			case 4: url = Jogo.class.getResource("/resources/franca4.png");
					break;
			case 5: url = Jogo.class.getResource("/resources/franca5.png");
					break;
			case 6: url = Jogo.class.getResource("/resources/franca6.png");
					break;
			case 7: url = Jogo.class.getResource("/resources/franca7.png");
					break;
			}
		}
		else if (x == 6) {
			switch(y) {
			case 1: url = Jogo.class.getResource("/resources/england1.png");
					break;
			case 2: url = Jogo.class.getResource("/resources/england2.png");
					break;
			case 3: url = Jogo.class.getResource("/resources/england3.png");
					break;
			case 4: url = Jogo.class.getResource("/resources/england4.png");
					break;
			case 5: url = Jogo.class.getResource("/resources/england5.png");
					break;
			case 6: url = Jogo.class.getResource("/resources/england6.png");
					break;
			case 7: url = Jogo.class.getResource("/resources/england7.png");
					break;
			}
		}
		icon = new ImageIcon(url);
	}
	
}
