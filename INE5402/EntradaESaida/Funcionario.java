public class Funcionario {
    private String nome;
    private double valor;
    private int horas;
    
    /**
     * @return the nome
     */
    public String getNome() {
        return nome;
    }
    /**
     * @return the horas
     */
    public int getHoras() {
        return horas;
    }
    /**
     * @return the valor
     */
    public double getValor() {
        return valor;
    }/**
     * @param horas the horas to set
     */
    public void setHoras(int horas) {
        this.horas = horas;
    }/**
     * @param nome the nome to set
     */
    public void setNome(String nome) {
        this.nome = nome;
    }/**
     * @param valor the valor to set
     */
    public void setValor(double valor) {
        this.valor = valor;
    }
    public double getSalario(){
        return valor*horas;
    }

    
}