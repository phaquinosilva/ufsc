package orientacaoObjetos;
import java.util.List;
import java.util.ArrayList;

public class Prateleira {
	private int id;
	private List<Produto> lstProdutos = new ArrayList<Produto>();

	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}

	public List<Produto> getLstProdutos() {
		return lstProdutos;
	}
	public void setLstProdutos(List<Produto> lstProdutos) {
		this.lstProdutos = lstProdutos;
	}
	
	public void addProduto(Produto p) {
		lstProdutos.add(p);
	}
	
	public void removeProduto (Produto p) {
		lstProdutos.remove(p);
	}
	
	//encontra o produto mais caro da prateleira
	public Produto getMaisCaro() {
		Produto teste = null;
		for(Produto p: lstProdutos) {
			teste = p;
			break;
		}
		for(Produto p: lstProdutos) {
			if(p.getPreco() > teste.getPreco()) {
				teste = p;
			}
		}
		return teste;
	}
	
	//soma os valores dos produtos
	public double somaValores() {
		double soma = 0;
		for (Produto p: lstProdutos) {
			soma += (p.getPreco()*p.getQtdeEstoque());
		}
		return soma;
	}
	
	//imprime uma lista com os produtos
	public void imprimeProdutos() {
		System.out.println("Produtos na prateleira " + getId() + ":");
		for (Produto p: lstProdutos) {
			System.out.println("	" + p.getDescricao());
		}
	}
	
}
