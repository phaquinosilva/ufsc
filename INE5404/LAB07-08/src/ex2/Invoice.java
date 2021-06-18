package ex2;

public class Invoice {
	private int numero;
	private String descricao;
	private int qtd;
	private double preco;
	
	public int getNumero() {
		return numero;
	}
	public void setNumero(int numero) {
		this.numero = numero;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	public int getQtd() {
		return qtd;
	}
	public void setQtd(int qtd) {
		this.qtd = qtd;
	}
	public double getPreco() {
		return preco;
	}
	public void setPreco(double preco) {
		this.preco = preco;
	}
	
	public Invoice(int n, String des, int qtd, double preco) {
		this.numero = n;
		this.descricao = descricao;
		if (qtd < 0) {
			this.qtd = 0;
		} else {
			this.qtd = qtd;
		}
		if (preco < 0) {
			this.preco = 0.0;
		} else {
			this.preco = preco;
		}
	}
	
	public double getInvoiceAmount() {
		return qtd*preco;
	}
	
	//FALTA ESCREVER O APP DE TESTE
}
