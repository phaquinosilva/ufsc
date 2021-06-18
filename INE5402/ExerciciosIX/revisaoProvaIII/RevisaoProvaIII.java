package revisaoProvaIII;

public class RevisaoProvaIII {
	
	//1 --> ok
	public int somaTriangSup (int[][] a){
		int soma = 0;
		for (int i = 0; i < a.length-1; i++) {
			for( int j = i+1; j < a[0].length; j++) {
				soma += a[i][j];
			}
		}
		return soma;
	}
	
	//2 --> ok
	public int maiorDivisivel3 (int[] v, int i) {
		if (i == v.length - 1) {
			if (v[i]%3 == 0) {
					return v[i];
			}
			return -1;
		}
		int maiorAntigo = maiorDivisivel3(v, i + 1);
		if (v[i]%3 == 0) {			
			if (v[i] >= maiorAntigo) {
				return v[i];
			}
		}
		return maiorAntigo;
	}
	
	//4 --> ok
	public int somaDigitos (int a) {
		if (a < 10) {
			return a;
		} else {
			return a%10 + somaDigitos(a/10);
		}
	}
	
	//3
	public int[] subtracaoVetores(int[]v, int[] w) {
		boolean[] igual = new boolean[v.length];
		if (v.length <= w.length || v.equals(w)) {
			return new int[0];
		} else {
			for (int i = 0; i < v.length; i++) {
				for (int j = 0; j < w.length; j++) {
					if (v[i] == w[j]) {
						igual[i] = true;
					}
				}
			}
		}
		int[] sub = new int[v.length - w.length];
		for (int i = 0; i < v.length - w.length; i++) {
			for (int j = 0; j < v.length; j++) {
				if (!igual[j]) {
					sub[i] = v[j];
					igual[j] = true;
					break;
				}
			}
		}
		return sub;
	}
	
	
}