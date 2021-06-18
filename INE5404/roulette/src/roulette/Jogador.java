package roulette;

public class Jogador {
	private int fichas; //quantas fichas o jogador tem
	private Aposta ap; //aposta que o jogador fez em det rodada
	private String nome;
	private int semAposta; //quantas rodadas o jogador passou sem apostar
	
	public Jogador() {
		this.setFichas(100);
		this.semAposta = 0;
	}
	
	public void fazerAposta(Aposta ap) {
		this.ap = ap;
	}	
	public Aposta getAposta() {
		return ap;
	}
	
	public void setFichas(int fichas) {
		this.fichas = fichas;
	}
	public int getFichas() {
		return fichas;
	}
	
	public int getSemAposta() {
		return semAposta;
	}
	
	public int apostaFicha(int n) {
		if (getFichas() >= n) {
			this.setFichas(getFichas() - n);
		} else {
			//a aposta não pode ser concluida
			return -1;
		}
		//o jogador nao quis apostar
		if (n == 0) {
			this.semAposta++;
		} else {
			this.semAposta = 0;
		}
		return n;
	}
	
	public void ganhou(int n) {
		this.setFichas(this.getFichas() + n);
	}
	
	//regra "en Prison" pra roleta francesa
	public void perdeu(int n) {
		if (ap.get1to1())
		this.setFichas(this.getFichas() + (n/2));
	}
	
	public void setNome(String nome) {
		this.nome = nome;
	}
	
	public String getNome() {
		return nome;
	}
}