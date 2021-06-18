package roulette;

import java.util.Random;

//duplica como a mesa
public abstract class Roleta {
	private int budget;
	
	public Roleta() {
		this.budget = 1000;
	}
	
	public int getBudget() {
		return budget;
	}
	
	public void setBudget(int nextValor) {
		this.budget = nextValor;
	}
	
	public int giraRoleta() {
		return new Random().nextInt(37); // retorna numeros de 0 a 36 
	}
}