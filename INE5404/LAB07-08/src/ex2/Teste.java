package ex2;

public class Teste {
	public static void main(String[] args) {
		Invoice prod = new Invoice(123456, "banana azul", 15, 0.94);
		
		System.out.println("invoice amount: " + prod.getInvoiceAmount());
		System.out.println("getNumero lalala :" + prod.getNumero()); 
	}
}
