package revisaoProvaIII;

public class Main {
	public static void main(String[] args) {
		/*
		PermutaImpares p = new PermutaImpares();
		int[] v = {1,2,3};
		p.permutations(v)*/
		RevisaoProvaIII r = new RevisaoProvaIII();
		int[] v = {1,2,3};
		int[] w = {1,2,3};
		System.out.print("[");
		for (int i = 0; i < r.subtracaoVetores(v, w).length; i++) {
			System.out.print(r.subtracaoVetores(v, w)[i] + " ");
		}
		System.out.print("]");
		
	}
}
