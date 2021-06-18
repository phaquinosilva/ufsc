import java.util.Random;

import java.net.URL;

import javax.imageio.ImageIO;
import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JDialog;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.SwingUtilities;

import java.net.MalformedURLException;
import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.FlowLayout;
import java.awt.Graphics;
import java.awt.GridLayout;
import java.awt.Image;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

public class Jogo {
	
	private boolean jogador = false; //permite usar sistema de turnos; false pra j1 e true pra j2
    int posicao; // deve dar a posicao de cada peça
    private static final String IMAGE_URL = "/resources/instrucoes.png";

    public int random(int inicio, int fim){
        Random rand = new Random();
        int randomN = rand.nextInt(fim) + inicio;
        return randomN;
    }
    private JButton[][] tabuleiro = new JButton[5][7];
    private int[] rosetas = new int[]{2, 0, 10, 15, 17};
    private JPanel panelCartas;
    
    private ArrayList<Peca> pecasEmJogoJ1 = new ArrayList<Peca>(); // pecas do jogador um que estao em jogo;
    private ArrayList<Peca> pecasEmJogoJ2 = new ArrayList<Peca>(); //pecas do j2 que estao em jogo
    private int contJ1; //pecas salvas do jogador 1
    private int contJ2; //pecas salvas do jogador 2
    
    /*quando o jogo inicia, temos que criar 14 pecas e distribui-las entre j1 e j2;
    pecasVit* fica vazia ate uma peca terminar o percurso --> pecasVit*.add(peca);
    quando uma peca termina o percurso, pecasEmJogoJ*.remove(peca);
    */
    
    Peca proxMov;
    int passos = 0;
    boolean endGame;
    JPanel panelBotoes = new JPanel();
    final JLabel jlabel = new JLabel("Pecas restantes do Jogador 1: "+(7-contJ1));
    final JLabel jlabel2 = new JLabel("Pecas restantes do jogador 2: "+(7-contJ2));
	String mensagemFinal;
	String[] choices = new String[7];
	String[] choices2 = new String[7];
	boolean repetePassos;
    
    public void escolhePeca() { //depois de rolar os dados o jogador deve escolher que peca vai mover
    	
    	proxMov = null;
    	
    	if (!jogador) {
	        
	        String[] escolhas = new String[7-contJ1];
	        
	        int j = 0;
	        for (int i = 0; i < 7; i++) {
	        	if (!(choices[i].equals("-"))) {
	        		escolhas[j] = choices[i];
	        		j++;
	        	}
	        }
	        	        
	    	int resposta = JOptionPane.showOptionDialog(
	                null
	              , "Vez: "+retornaTurno()+"\nDado: "+passos+"\nEscolha a peça:"
	              , ""+retornaTurno()
	              , JOptionPane.YES_NO_OPTION  
	              , JOptionPane.PLAIN_MESSAGE                               
	              , null
	              , escolhas
	              , escolhas
	            );
	    	
	    	for (int i = 0; i < pecasEmJogoJ1.size(); i++) {
	    		if (resposta == i) {
	    			char a = escolhas[i].toCharArray()[0];
	    			int b = a - '1';
	    			proxMov = pecasEmJogoJ1.get(b);
	    			escolhas = null;
	    		}
	    	}
    	}
    	
    	if (jogador){
    		
    		String[] escolhas = new String[7-contJ2];
	        
    		int j = 0;
	        for (int i = 0; i < 7; i++) {
	        	if (!(choices2[i].equals("-"))) {
	        		escolhas[j] = choices2[i];
	        		j++;
	        	}
	        }
	            	    	    	    	
	    	int resposta = JOptionPane.showOptionDialog(
	                null
	              , "Vez: "+retornaTurno()+"\nDado: "+passos+"\nEscolha a peça:"       // Mensagem
	              , ""+retornaTurno()               // Titulo
	              , JOptionPane.YES_NO_OPTION  
	              , JOptionPane.PLAIN_MESSAGE                               
	              , null // Icone. Você pode usar uma imagem se quiser, basta carrega-la e passar como referência
	              , escolhas // Array de strings com os valores de cada botão. Veja o exemplo abaixo **
	              , escolhas    // Label do botão Default
	            );
	    	
	    	for (int i = 0; i < pecasEmJogoJ2.size(); i++) {
	    		if (resposta == i) {
	    			char a = escolhas[i].toCharArray()[0];
	    			int b = a - '1';
	    			proxMov = pecasEmJogoJ2.get(b);
	    			escolhas = null;
	    		}
	    	}
    	}
  
    }
    
    public int f(int x) {
    	switch(x) {
    		case -1: return 900;
    		case -2: return 940;
    		case 9: return 913;
    		case 6: return 912;
    		case 3: return 911;
    		case 0: return 910;
    		case 15: return 915;
    		case 18: return 916;
    		case 1: return 920;
    		case 4: return 921;
    		case 7: return 922;
    		case 10: return 923;
    		case 13: return 924;
    		case 16: return 925;
    		case 19: return 926;
    		case 2: return 930;
    		case 5: return 931;
    		case 8:	return 932;
    		case 11: return 933;
    		case 17: return 935;
    		case 20: return 936;
    	}
    	return 1000;
    }
    
    public int g(int x) {
    	switch(x) {
    		case 0: return 1;
    		case 2: return 1;
    		case 10: return 1;
    		case 15: return 1;
    		case 17: return 1;
    	}
    	return 0;
    	
    }
    
    public int mostrarPergunta(String msg) {
		return JOptionPane.showConfirmDialog(new JFrame(), msg, null, JOptionPane.YES_NO_OPTION);
	}
    
    public void jogar() {
    	while (gameOver() == false) {
    	if (!repetePassos) {
    		passos = random(1,4);
    	}
    	escolhePeca();
    	andar();
    	}
		int resposta = mostrarPergunta(mensagemFinal);    	
    	if (resposta == JOptionPane.YES_OPTION) {
			comecarJogo();
		}
		System.exit(0); 	
    }
    
    public void comecarJogo() {
    	    	
    	contJ1 = 0;
    	contJ2 = 0;
    	endGame = false;
    	jogador = false;
    	jlabel.setVisible(true);
    	jlabel2.setVisible(true);
    	repetePassos = false;
    	
    	for (int i = 0; i < 7; i++) {
    		choices[i] = ""+(i+1);
    	}
    	for (int i = 0; i < 7; i++) {
    		choices2[i] = ""+(i+1);
    	}
    	
    	for (int i = 0; i < 7; i++) {
    		if (i < pecasEmJogoJ1.size()) {
    		pecasEmJogoJ1.remove((pecasEmJogoJ1.get(i)));
    		}
    		((PecaJ1) tabuleiro[0][i]).setPosicao(0);
	    	((PecaJ1) tabuleiro[0][i]).setImagem(3);
	    	((PecaJ1) tabuleiro[0][i]).ibagem(((PecaJ1) tabuleiro[0][i]).getID2(), i+1);
    		panelCartas.add(tabuleiro[0][i]);
    		((PecaJ1) tabuleiro[0][i]).mostrarIcone();
			pecasEmJogoJ1.add((PecaJ1) tabuleiro[0][i]);
			tabuleiro[0][i].setVisible(true);
		}
		
    	for (int i = 1; i<4; i++) {
    	    for (int j = 0; j<7; j++) {
        	((Tabuleiro) tabuleiro[i][j]).setImagem(0);
    		panelCartas.add(tabuleiro[i][j]);
    		((Tabuleiro) tabuleiro[i][j]).mostrarIcone();
    		tabuleiro[i][j].setVisible(true);
    	    }
    	}
    	
    	for (int i = 0; i < 7; i++) {
    		if (i < pecasEmJogoJ2.size()) {
    		pecasEmJogoJ2.remove((pecasEmJogoJ2.get(i)));
    		}
			((PecaJ2) tabuleiro[4][i]).setPosicao(0);
    		((PecaJ2) tabuleiro[4][i]).setImagem(4);
    		((PecaJ2) tabuleiro[4][i]).ibagem(((PecaJ2) tabuleiro[4][i]).getID2(), i+1);
    		panelCartas.add(tabuleiro[4][i]);
    		((PecaJ2) tabuleiro[4][i]).mostrarIcone();
			pecasEmJogoJ2.add((PecaJ2) tabuleiro[4][i]);
			tabuleiro[4][i].setVisible(true);
		}
    	
    	((Tabuleiro) tabuleiro[1][0]).setImagem(1);
    	((Tabuleiro) tabuleiro[2][3]).setImagem(1);
    	((Tabuleiro) tabuleiro[1][5]).setImagem(1);
    	((Tabuleiro) tabuleiro[3][5]).setImagem(1);
    	((Tabuleiro) tabuleiro[1][4]).setImagem(2);
    	((Tabuleiro) tabuleiro[3][4]).setImagem(2);
    	((Tabuleiro) tabuleiro[3][0]).setImagem(1);
    	((Tabuleiro) tabuleiro[3][0]).mostrarIcone();
    	((Tabuleiro) tabuleiro[1][0]).mostrarIcone();
    	((Tabuleiro) tabuleiro[2][3]).mostrarIcone();
    	((Tabuleiro) tabuleiro[1][5]).mostrarIcone();
    	((Tabuleiro) tabuleiro[3][5]).mostrarIcone();
    	((Tabuleiro) tabuleiro[1][4]).mostrarIcone();
    	((Tabuleiro) tabuleiro[3][4]).mostrarIcone();
    	
    	panelCartas.updateUI();
    	jogar();
    	
    }
    public void configurarJogo() {
	telaJogo();
    	
    	try {
    		tabuleiro = new JButton[][]{ 
    		{new PecaJ1(1, 3), new PecaJ1(2, 3), new PecaJ1(3, 3), new PecaJ1(4, 3), new PecaJ1(5, 3), new PecaJ1(6, 3), new PecaJ1(7, 3)},   
    		{new Tabuleiro(1), new Tabuleiro(0), new Tabuleiro(0), new Tabuleiro(0), new Tabuleiro(2), new Tabuleiro(1), new Tabuleiro(0)},
    	   	{new Tabuleiro(0), new Tabuleiro(0), new Tabuleiro(0), new Tabuleiro(1), new Tabuleiro(0), new Tabuleiro(0), new Tabuleiro(0)},
    	   	{new Tabuleiro(1), new Tabuleiro(0), new Tabuleiro(0), new Tabuleiro(0), new Tabuleiro(2), new Tabuleiro(1), new Tabuleiro(0)},
    	   	{new PecaJ2(8, 4), new PecaJ2(9, 4), new PecaJ2(10, 4), new PecaJ2(11, 4), new PecaJ2(12, 4), new PecaJ2(13, 4), new PecaJ2(14, 4)}
    		};
    		
    	    }catch(MalformedURLException  e) {
    	           throw new AssertionError(e);
    	    }
    	SwingUtilities.invokeLater(new Runnable()
        {
            @Override
            public void run() 
            {
        	try {
        	    JDialog jdialog = new JDialog();
        	    //jdialog.setSize(1000, 1037);
        	    jdialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
        	    jdialog.setTitle("help");
        	    //jdialog.setLayout(new BorderLayout());
        	    jdialog.add(new JLabel(new ImageIcon(ImageIO.read(getClass().getResourceAsStream(IMAGE_URL)))));	
        	    jdialog.pack();
        	    jdialog.setLocationByPlatform(true);
        	    jdialog.setVisible(true);
        	} 
        	catch (IOException e) 
        	{
        	    e.printStackTrace();
        	}
            }
        });
	
    }
    public void telaJogo() {
    	
    	JFrame frame = new JFrame();
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); 
        frame.setTitle("Jogo Real de Ur");
        frame.setPreferredSize(new Dimension(1120,800));
    	
    	//JLabel background = new JLabel(new ImageIcon("/resources/instrucoes.png"));
    	//background.setLayout(new FlowLayout());
    	    
        Container containerMainFrame = frame.getContentPane();
        containerMainFrame.setLayout(new BorderLayout()); 
        
        panelCartas = new JPanel();
        
        panelCartas.setLayout(new GridLayout(5,7));
        
        panelBotoes.setLayout(new GridLayout(1,0));
        
        JButton btnIniciar = new JButton("Iniciar");
        btnIniciar.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
			    	
				comecarJogo();
			}
		});
        
        JButton btnSair = new JButton("Sair");
        btnSair.addActionListener(new ActionListener() {
			@Override
			public void actionPerformed(ActionEvent arg0) {
				System.exit(0);
			}
		});
    

        /**JDialog jdialog = new JDialog();
	jdialog.setSize(1000, 1037);
	jdialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
	jdialog.setTitle("help");
	jdialog.setLayout(new BorderLayout());
	jdialog.add(new JLabel(new ImageIcon(ImageIO.read(getClass().getResourceAsStream(IMAGE_URL)))));	
	    jdialog.pack();
	    jdialog.setLocationByPlatform(true);
	    jdialog.setVisible(true);
	   **/
        panelBotoes.add(btnIniciar);
        panelBotoes.add(jlabel);
        panelBotoes.add(jlabel2);
        jlabel.setVisible(false);
        jlabel2.setVisible(false);
        panelBotoes.add(btnSair);
        //containerMainFrame.add(background, BorderLayout.SOUTH);
        containerMainFrame.add(panelBotoes, BorderLayout.NORTH);
        containerMainFrame.add(panelCartas, BorderLayout.CENTER);
        
        frame.pack();
        frame.setVisible(true);
        
    }
    
    public boolean andar(){
    	try {
    	if (jogador == false) {
    		if(proxMov.getPosicao() + passos < 25){
    			for (Peca p : pecasEmJogoJ1) {
              	   if (((PecaJ1)proxMov).getCaminho()[proxMov.getPosicao()+passos] == ((PecaJ1)p).getCaminho()[p.getPosicao()]) {
              		   p.setPosicao(0);
              		  ((Tabuleiro)tabuleiro[0][p.getID()-1]).setImagem(3);
              		  ((Tabuleiro)tabuleiro[0][p.getID()-1]).ibagem(3, p.getID());//ADD
             		  ((Tabuleiro)tabuleiro[0][p.getID()-1]).mostrarIcone();
              	   }
                 }
            	int k = f(((PecaJ1) proxMov).getCaminho()[proxMov.getPosicao()]);
            	int u = g(((PecaJ1) proxMov).getCaminho()[proxMov.getPosicao()]);
            	if ((k/10)%10 == 0) {
            		u = 2;
            	}
            	int t = 0;
            	if ((k/10)%10 == 0 && k%10 == 0) {
            		t = proxMov.getID() - 1;
            	}
            	((Tabuleiro)tabuleiro[(k/10)%10][k%10+t]).setImagem(u);
            	((Tabuleiro)tabuleiro[(k/10)%10][k%10+t]).mostrarIcone();
            	proxMov.setPosicao(proxMov.getPosicao() + passos);
            	k = f(((PecaJ1) proxMov).getCaminho()[proxMov.getPosicao()]);
            	((Tabuleiro)tabuleiro[(k/10)%10][k%10]).setImagem(5);
            	((Tabuleiro)tabuleiro[(k/10)%10][k%10]).ibagem(5, proxMov.getID());//ADD
            	((Tabuleiro)tabuleiro[(k/10)%10][k%10]).mostrarIcone();
            	for (Peca p : pecasEmJogoJ2) {
             	   if (((PecaJ1)proxMov).getCaminho()[proxMov.getPosicao()] == ((PecaJ2)p).getCaminho()[p.getPosicao()]) {
             		   p.setPosicao(0);
             		   ((Tabuleiro)tabuleiro[4][p.getID()-8]).setImagem(4);
             		  ((Tabuleiro)tabuleiro[4][p.getID()-8]).ibagem(4, p.getID()-7);//ADD
             		   ((Tabuleiro)tabuleiro[4][p.getID()-8]).mostrarIcone();
             	   }
                }
            	
                for (int i = 0; i < rosetas.length; i++) {
                	if(((PecaJ1) proxMov).getCaminho()[proxMov.getPosicao()] == rosetas[i]) {
                		repetePassos = false;
                		return jogador;
                	}
                }
                jogador = !jogador;
                repetePassos = false;
                return true;
    		} else if ((proxMov.getPosicao() + passos) == 25){
    			contJ1++;
    			choices[proxMov.getID() - 1] = "-";
    			proxMov.setPosicao(25);
    			if (passos == 1) {
    			((Tabuleiro)tabuleiro[1][2]).setImagem(0);
    			((Tabuleiro)tabuleiro[1][2]).mostrarIcone();
    			} else if (passos == 2) {
    				((Tabuleiro)tabuleiro[1][1]).setImagem(0);
        			((Tabuleiro)tabuleiro[1][1]).mostrarIcone();
    			} else if (passos == 3) {
    				((Tabuleiro)tabuleiro[1][0]).setImagem(1);
        			((Tabuleiro)tabuleiro[1][0]).mostrarIcone();
    			}else if (passos == 4) {
    				((Tabuleiro)tabuleiro[2][0]).setImagem(0);
        			((Tabuleiro)tabuleiro[2][0]).mostrarIcone();
    			}
      		    tabuleiro[0][proxMov.getID() - 1].setVisible(false);
      		    jlabel.setText("Pecas restantes do Jogador 1: "+(7-contJ1));
    			jogador = !jogador;
    			repetePassos= false;
      		    return true;
    		} else {
    			jogador = true;
    			repetePassos = false;
    			return true; 
    		}
    	} else if (jogador == true) {
    		if(proxMov.getPosicao() + passos < 25){
    			for (Peca p : pecasEmJogoJ2) {
              	   if (((PecaJ2)proxMov).getCaminho()[proxMov.getPosicao()+passos] == ((PecaJ2)p).getCaminho()[p.getPosicao()]) {
              		   p.setPosicao(0);
              		   ((Tabuleiro)tabuleiro[4][p.getID()-8]).setImagem(4);
              		 ((Tabuleiro)tabuleiro[4][p.getID()-8]).ibagem(4, p.getID()-7);//ADD
              		   ((Tabuleiro)tabuleiro[4][p.getID()-8]).mostrarIcone();
              	   }
                 }
            	int k = f(((PecaJ2) proxMov).getCaminho()[proxMov.getPosicao()]);
            	int u = g(((PecaJ2) proxMov).getCaminho()[proxMov.getPosicao()]);
            	if ((k/10)%10 == 4) {
            		u = 2;
            	}
            	int t = 0;
            	if ((k/10)%10 == 4 && k%10 == 0) {
            		t = proxMov.getID() - 8;
            	}
            	((Tabuleiro)tabuleiro[(k/10)%10][k%10+t]).setImagem(u);
            	((Tabuleiro)tabuleiro[(k/10)%10][k%10+t]).mostrarIcone();
            	proxMov.setPosicao(proxMov.getPosicao() + passos);
            	k = f(((PecaJ2) proxMov).getCaminho()[proxMov.getPosicao()]);
            	((Tabuleiro)tabuleiro[(k/10)%10][k%10]).setImagem(6);
            	((Tabuleiro)tabuleiro[(k/10)%10][k%10]).ibagem(6 , proxMov.getID()-7);//ADD
            	((Tabuleiro)tabuleiro[(k/10)%10][k%10]).mostrarIcone();
            	for (Peca p : pecasEmJogoJ1) {
             	   if (((PecaJ2)proxMov).getCaminho()[proxMov.getPosicao()] == ((PecaJ1)p).getCaminho()[p.getPosicao()]) {
             		   p.setPosicao(0);
             		  ((Tabuleiro)tabuleiro[0][p.getID()-1]).setImagem(3);
             		 ((Tabuleiro)tabuleiro[0][p.getID()-1]).ibagem(3, p.getID());
            		  ((Tabuleiro)tabuleiro[0][p.getID()-1]).mostrarIcone();
             	   }
                }
            	
                for (int i = 0; i < rosetas.length; i++) {
                	if(((PecaJ2) proxMov).getCaminho()[proxMov.getPosicao()] == rosetas[i]) {
                		repetePassos = false;
                		return jogador;
                	}
                }
                jogador = !jogador;
                repetePassos = false;
                return false;
    		} else if ((proxMov.getPosicao() + passos) == 25){
    			contJ2++;
    			choices2[proxMov.getID() - 8] = "-";
    			proxMov.setPosicao(25);
    			if (passos == 1) {
        			((Tabuleiro)tabuleiro[3][2]).setImagem(0);
        			((Tabuleiro)tabuleiro[3][2]).mostrarIcone();
        			} else if (passos == 2) {
        				((Tabuleiro)tabuleiro[3][1]).setImagem(0);
            			((Tabuleiro)tabuleiro[3][1]).mostrarIcone();
        			} else if (passos == 3) {
        				((Tabuleiro)tabuleiro[3][0]).setImagem(1);
            			((Tabuleiro)tabuleiro[3][0]).mostrarIcone();
        			}else if (passos == 4) {
        				((Tabuleiro)tabuleiro[2][0]).setImagem(0);
            			((Tabuleiro)tabuleiro[2][0]).mostrarIcone();
        			}
      		    tabuleiro[4][proxMov.getID() - 8].setVisible(false);
      		    jlabel2.setText("Pecas restantes do Jogador 2: "+(7-contJ2));
      		  jogador = !jogador;
      		  repetePassos = false;
      		    return false;
    		} else {
    			repetePassos = false;
    			jogador = false;
    			return false;
    		}
    	}
    	
    	}
    	catch(NullPointerException e) {
    		mensagemFinal = "Voce quer reiniciar o jogo?";
    		int resposta = mostrarPergunta(mensagemFinal);    	
        	if (resposta == JOptionPane.YES_OPTION) {
            	comecarJogo();
        	}
    		System.exit(0);	
    	}
    	jogador = !jogador;
    	return !jogador;
    	}
    
    public String retornaTurno() {
    	if (contJ1 != 7 && contJ2 != 7 && jogador) {
    		return "Jogador 2";
    	}
    	if (contJ1 != 7 && contJ2 != 7 && !jogador) {
    		return "Jogador 1";
    	}
    	return "Fim do Jogo";
    }
    
    public boolean gameOver() {
    		
    	if (contJ1 == 7) {
    		mensagemFinal = "Parabens, o jogador 1 ganhou! Jogar novamente?";
    		endGame = true;
    	}  	
    	if (contJ2 == 7) {
    		mensagemFinal = "Parabens, o jogador 2 ganhou! Jogar novamente?";
    		endGame = true;	
    }
    	return endGame;
    }	
    
    public void ajuda() throws IOException {
	SwingUtilities.invokeLater(new Runnable()
        {
            @Override
            public void run() 
            {
        	try {
        	    JDialog jdialog = new JDialog();
        	    //jdialog.setSize(1000, 1037);
        	    jdialog.setDefaultCloseOperation(JDialog.DISPOSE_ON_CLOSE);
        	    jdialog.setTitle("help");
        	    //jdialog.setLayout(new BorderLayout());
        	    jdialog.add(new JLabel(new ImageIcon(ImageIO.read(getClass().getResourceAsStream(IMAGE_URL)))));	
        	    jdialog.pack();
        	    jdialog.setLocationByPlatform(true);
        	    jdialog.setVisible(true);
        	} 
        	catch (IOException e) 
        	{
        	    e.printStackTrace();
        	}
            }
        });
    	//JFrame f = new JFrame("ajuda");
    	//f.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE); 
       // f.setTitle("ajuda");
       // f.setSize(1000,1037);
       // f.setVisible(true);
        //setLayout(new BorderLayout());
	//JLabel background=new JLabel(new ImageIcon("C:\\Users\\Computer\\Downloads\\colorful design.png"));
	//add(background);
	//background.setLayout(new FlowLayout());
    }
}