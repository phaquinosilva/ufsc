package roulette;

import java.util.Random;

public class RoletaAmericana extends Roleta{
	
	RoletaAmericana() {
		
		System.out.println(
				"\r\n" + 
				"    |1  |2  |3  |4  |5  |6  |7  |8  |9  |10 |11 |12 |\r\n" + 
				"    -----------------------------------------------------------\r\n" + 
				"|00 |3# |6  |9# |12#|15 |18#|21#|24 |27#|30#|33 |36#|  1a linha\r\n" + 
				"|0  |2  |5# |8  |11 |14#|17 |20 |23#|26 |29 |32#|35 |  2a linha\r\n" + 
				"    |1# |4  |7# |10 |13 |16#|19#|22 |25#|28 |31 |34#|  3a linha\r\n" + 
				"    -----------------------------------------------------------\r\n" + 
				"    |1a duzia       |2a duzia       |3a duzia       |\r\n" + 
				"\r\n" + 
				"--------------------------------------------------------------\r\n" + 
				"\nA mesa tem 1000 fichas.");
		
	}
	
	//tem 0 e 00 (37)
	public int giraRoleta() {
		return new Random().nextInt(38);
	}
}
