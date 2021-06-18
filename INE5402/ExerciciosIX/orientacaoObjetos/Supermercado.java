package orientacaoObjetos;
import java.util.List;
import java.util.LinkedList;

public class Supermercado {
	private List<Prateleira> lstPrateleiras = new LinkedList<Prateleira>();
	private List<Funcionario> lstFuncionarios = new LinkedList<Funcionario>();
	
	public void addPrateleira(Prateleira prat) {
		lstPrateleiras.add(prat);		
	}
	
	public void addFuncionario(Funcionario func) {
		lstFuncionarios.add(func);
	}
	
	public int getQtdeFuncionarios() {
		return lstFuncionarios.size();
	}
	
	//encontra o produto mais caro do supermercado
	public Produto getProdMaisCaro() { 
		Produto teste = null;
		for(Prateleira prat: lstPrateleiras) {
			teste = prat.getMaisCaro();
			break;
		}
		for(Prateleira prat: lstPrateleiras) {
			if(prat.getMaisCaro().getPreco() > teste.getPreco()) {
				teste = prat.getMaisCaro();
			}
		}
		return teste;
	}
	
	//encontra o funcionario (masc) mais novo
	public Funcionario funcionarioMaisNovo() {
		Funcionario funcTeste = null;
		for(Funcionario f: lstFuncionarios) {
			if(f.getSexo() == "masculino") {
				funcTeste = f;
				break;
			}
		}
		for (Funcionario f: lstFuncionarios) {
			if (f.getSexo() == "masculino" && f.getIdade() < funcTeste.getIdade()) {
					funcTeste = f;
			}
		}
		return funcTeste;
	}
	
	//encontra a funcionaria (fem) mais bem paga
	public Funcionario funcionariaMaiorSalario() {
		Funcionario funcTeste = null;
		for (Funcionario f: lstFuncionarios) {
			if (f.getSexo() == "feminino") {
				funcTeste = f;
				break;
			}
		}
		for (Funcionario f: lstFuncionarios) {
			if (f.getSexo() == "feminino" && f.getSalario() > funcTeste.getSalario()) {
				funcTeste = f;
			}
		}
		return funcTeste;
	}
	
	//encontra a media dos salarios dos funcionarios
	public double mediaSalarios() {
		double soma = 0;
		for (Funcionario f: lstFuncionarios) {
			soma += f.getSalario();
		}
		return (soma/lstFuncionarios.size());
	}
	
	//encontra a prateleira com maior soma de precos de produtos
	public Prateleira prateleiraMaisCara() {
		Prateleira pratTeste = null;
		for (Prateleira p: lstPrateleiras) {
			pratTeste = p;
			break;
		}
		for (Prateleira p: lstPrateleiras) {
			if (p.somaValores() > pratTeste.somaValores()) {
				pratTeste = p;
			}
		}
		return pratTeste;
	}
	
	//imprime soma dos salarios dos funcionarios
	public void imprimeSalariosFunc() {
		double soma = 0;
		for (Funcionario f: lstFuncionarios) {
			soma += f.getSalario();
		}
		System.out.println("A soma dos salários dos funcionários é: R$" + soma);
	}
	
	//imprime a quantidade e salario medio dos funcionarios masculino
	public void imprimeQtdeSal() {
		double soma = 0;
		int cnt = 0;
		for (Funcionario f : lstFuncionarios) {
			if (f.getSexo() == "masculino") {
				cnt += 1;
				soma += f.getSalario();
			}
		}
		System.out.println("Quantidade de funcionarios homens: " + cnt);
		System.out.println("Salario médio dos homens: R$" + (soma/cnt));
	}
}
