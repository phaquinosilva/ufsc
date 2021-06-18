package ex3;

public class Empregado {
	
	private String nome, sobrenome;
	private double salario;
	
	public String getSobrenome() {
		return sobrenome;
	}
	public void setSobrenome(String sobrenome) {
		this.sobrenome = sobrenome;
	}
	public String getNome() {
		return nome;
	}
	public void setNome(String nome) {
		this.nome = nome;
	}
	public double getSalario() {
		return salario;
	}
	public void setSalario(double salario) {
		this.salario = salario;
	}
	
	Empregado(String nome, String sobrenome, double salario) {
		this.nome = nome;
		this.sobrenome = sobrenome;
		if (salario > 0) {
			this.salario = salario;
		} else {
			this.salario = 0;
		}
	}
	
	public double getSalarioAnual() {
		return salario*12;
	}
	
	public void darAumento(double aumentoPercento) {
		salario = salario*(1 + aumentoPercento);
	}
}
