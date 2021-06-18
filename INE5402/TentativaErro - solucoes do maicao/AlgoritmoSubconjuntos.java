package tentativaErro;

public class AlgoritmoSubconjuntos {
	private boolean inSet[]; //Guarda se um item faz parte ou não do subconjunto
	
	private void imprimeResultados(int v[]) {
		System.out.print("{ ");
		for (int i = 0; i < v.length; i++) {
			if (inSet[i]) { //Testa se o item i está no conjunto ou não
				System.out.print(v[i] + " ");
			}
		}
		System.out.print("}");
		System.out.println();
	}
	
	//Calcula subconjuntos considerando a partir do item i
	private void calcSubconjuntos(int v[], int i) {
		if (i == v.length) { //Se percorreu todos os itens, imprime o conjunto
			imprimeResultados(v);
		} else {
			//Minha escolha é o item i "estar" ou "não estar" no conjunto
			
			//Estar
			inSet[i] = true;
			calcSubconjuntos(v, i+1); //Faço os subconjuntos dos itens restantes
			
			//Não estar
			inSet[i] = false;
			calcSubconjuntos(v, i+1); //Faço os subconjuntos dos itens restantes
		}
	}
	
	public void subconjuntos(int v[]) {
		inSet = new boolean[v.length];
		
		calcSubconjuntos(v, 0);
	}
}
