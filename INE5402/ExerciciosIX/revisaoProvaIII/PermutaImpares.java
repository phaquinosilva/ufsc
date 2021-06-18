package revisaoProvaIII;

public class PermutaImpares {
	
	public int[] troca(int[] v, int inicio, int fim) {
		int tmp = v[inicio];
		v[inicio] = v[fim];
		v[fim] = tmp;
		return v;
	}
	
	public void permuta(int[] v, int start, int fim) {
		if (start == fim) {
			if (v[0]%2 != 0) {
				imprimeResultado(v);
			}
		} else {
			int i;
			for (i = start; i <= fim; i++) {
				troca(v, start, i);
				permuta(v, start+1, fim);
				troca(v, i, start);//backtrack
			}
		}
	}
	
	public void imprimeResultado(int a[]) {
		for (int i = 0; i < a.length; i++) {
			System.out.print(a[i]+" ");
		}
		System.out.println();
	}
	
	public void permutations(int[] v) {
		permuta(v, 0, v.length-1);
	}
}
