package sistemasFinanceiros;

import java.awt.BorderLayout;
import java.awt.Color;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.List;

import javax.swing.Box;
import javax.swing.BoxLayout;
import javax.swing.JButton;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTextField;

public class Tela extends JFrame {
	private final Font fonte = new Font("Calibre", Font.BOLD, 20);
	private final Color backgroundColorEsq = new Color(220, 220, 220);
	private final Color backgroundColorDir = new Color(200, 200, 200);
	private final Color backgroundColorTopo = new Color(180, 180, 180);
	private JLabel nextCallLabel;
	private JPanel panelEsq, panelDir, panelGrafico;
	private JTextField entradaTexto;
	
	private List<JButton> empresasBtns;
	private Gerenciador gerenciador;
	
	Tela(Gerenciador gerenciador) {
		this.gerenciador = gerenciador;
		
		setTitle("Sistema Financeiro");
		setSize(800, 600);
		setLocation(280, 40);
		setResizable(false);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

		criarContainers();
		ajustarNextCallLabel(0);
		
		setVisible(true);
	}
		
	private void criarContainers() {
		Container frame = super.getContentPane();
	//	frame.setLayout(new BoxLayout(frame, BoxLayout.PAGE_AXIS)); 
			
		Container contBaixo = new Container();
		contBaixo.setLayout(new GridLayout(2,2));
		
			//canto topo
		contBaixo.add(criarPanelTopoEsq());
		contBaixo.add(criarPanelDir());
			//canto baixo
		contBaixo.add(criarPanelBaixoEsq());
		contBaixo.add(new Grafico());
		
		frame.add(criarPanelTopo(), BorderLayout.PAGE_START);
		frame.add(contBaixo);
	}
	
	private JPanel criarPanelTopo() {
		JPanel panelTopo = new JPanel();
		panelTopo.setBackground(backgroundColorTopo);
		
		//label com o tempo ate a prox call da API
		nextCallLabel = new JLabel();
		nextCallLabel.setFont(fonte);
		
		//btn de help
		JButton helpBtn = new JButton("Help");
		helpBtn.addActionListener(new ActionListener() {
		    @Override
		    public void actionPerformed(ActionEvent arg0) {
		    	/////FAZER_HELP_BTN
		    	System.out.println("FAZER_HELP_BTN");
		    }
		 });
		helpBtn.setBackground(Color.lightGray);
		helpBtn.setFont(fonte);
		
		
		//btn de reset dos dados de empresas
		JButton resetDadosBtn = new JButton("Reset Dados");
		resetDadosBtn.addActionListener(new ActionListener() {
		    @Override
		    public void actionPerformed(ActionEvent arg0) {
		    	/////FAZER_RESET_BTN
		    	System.out.println("FAZER_RESET_BTN");
		    }
		 });
		resetDadosBtn.setBackground(Color.lightGray);
		resetDadosBtn.setFont(fonte);
		
		
		//adiciono tudo ao panel  
		panelTopo.add(nextCallLabel);
		panelTopo.add(Box.createHorizontalStrut(160));
		panelTopo.add(helpBtn);
		panelTopo.add(Box.createHorizontalStrut(160));
		panelTopo.add(resetDadosBtn);
		
		return panelTopo;
	}

	private JPanel criarPanelBaixoEsq() {
		panelEsq = new JPanel();
		panelEsq.setBackground(backgroundColorEsq);
		panelEsq.setLayout(new BoxLayout(panelEsq, BoxLayout.PAGE_AXIS));
		ajustarPanelBaixoEsq();
		
		return panelEsq;
	}
	
	private JPanel criarPanelTopoEsq() {
		JPanel panelTopo = new JPanel();
		panelTopo.setLayout(new BoxLayout(panelTopo, BoxLayout.PAGE_AXIS));
		panelTopo.setBackground(backgroundColorEsq);
		
		//entrada de Texto
		entradaTexto = new JTextField();
		entradaTexto.setMaximumSize(new Dimension(500, 80));
		entradaTexto.setFont(fonte);
		
		//btn add
		JButton addBtn = new JButton("Add");
		addBtn.addActionListener(new ActionListener() {
		    @Override
		    public void actionPerformed(ActionEvent arg0) {
		    	String sigla = entradaTexto.getText();
		    	//vejo se tem algo escrito
		    	if(sigla.length() == 0) {
		    		gerenciador.addEmpresasList(sigla);
		    	}
		    	
		    	ajustarPanelBaixoEsq();
		    }
		 });
		addBtn.setBackground(Color.lightGray);
		addBtn.setFont(fonte);
		
		//btn de remove siglas
		JButton removeBtn = new JButton("Remove");
		removeBtn.addActionListener(new ActionListener() {
		    @Override
		    public void actionPerformed(ActionEvent arg0) {
		    	String sigla = entradaTexto.getText();
		    	
		    	if(sigla.length() == 0) {
		    		gerenciador.removeEmpresasList(sigla);
		    	}
		    	
		    	ajustarPanelBaixoEsq();
		    }
		 });
		removeBtn.setBackground(Color.lightGray);
		removeBtn.setFont(fonte);
		
		//adiciono tudo ao panel 
		panelTopo.add(Box.createVerticalStrut(10)); 
		panelTopo.add(entradaTexto);
		panelTopo.add(Box.createVerticalStrut(20)); 
		panelTopo.add(addBtn);
		panelTopo.add(Box.createVerticalStrut(20));
		panelTopo.add(removeBtn);
		panelTopo.add(Box.createVerticalStrut(20));
		
		return panelTopo;
	}

	
	private JPanel criarPanelDir() {
		panelDir = new JPanel();
		panelDir.setBackground(backgroundColorDir);
		
		ajustarPanelDir();
		
		return panelDir;
	}
	
	public void ajustarPanelBaixoEsq() {
		panelEsq.removeAll();
		
		//atualizo
		for(String sigla : gerenciador.getEmpresasList()) {
			JButton empresaBTN = new JButton();
			empresaBTN.addActionListener(new ActionListener() {
			    @Override
			    public void actionPerformed(ActionEvent arg0) {
			    	
			    }
			 });
			empresaBTN.setBackground(Color.lightGray);
			empresaBTN.setFont(fonte);
			
			empresaBTN.setText(sigla);
			//add to painel
			panelEsq.add(empresaBTN);
		}
		
		//atualizo o frame
		setVisible(true);
	}
	
	public void ajustarPanelDir() {
		panelDir.add(new JLabel("1"));
	}
	
	public void ajustarNextCallLabel (int time) {
		nextCallLabel.setText("Next Call: "+time);
	}
}
