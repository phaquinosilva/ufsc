package backtracking;

public class AlgSubconjuntos {
    private boolean[] contado;

    public void imprimeResultado (int[] v) {
        System.out.print("{");
        for (int i = 0; i < v.length; i++) {
            if (contado[i]) {
                System.out.print(v[i] + " ");
            }
        }
        System.out.print("}\n");
    }

    public void calculaSubconjunto (int[] v, int pos) {
        if (pos == v.length) {
            imprimeResultado(v);
        } else {
            contado[pos] = true;
            calculaSubconjunto(v, pos + 1);

            contado[pos] = false;
            calculaSubconjunto(v, pos + 1);
        }
    }

    public void inicia(int[] v) {
        contado = new boolean[v.length];
        calculaSubconjunto(v, 0);
    }
}