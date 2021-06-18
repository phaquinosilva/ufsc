package sistemasFinanceiros;

import java.awt.Color;
import java.awt.Graphics;

import javax.swing.JPanel;

public class Grafico extends JPanel {
	
	protected void paintComponent(Graphics g) {
        super.paintComponent(g);
        g.setColor(Color.yellow);
        g.drawString("deu", 10, 10);
    }
	
}
