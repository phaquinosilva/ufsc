package roulette;

//define as apostas possiveis
public class Aposta {
	
	private int ficha;
	private int numero;
	//define os tipos de aposta possiveis
	private Type tipo;
	private DUZIA doze;
	private LINHA linha;
	private int col;
	private PARIDADE par;
	private COR cor;
	private ALTOBAIXO aob;
	private int[] four_num = new int[4];
	//faltam as apostas em QUADRAS
	
	private boolean fim = false;
	
	public Aposta(Type tipo, int ficha) {
		if (tipo == Type.QUINTA) {
			this.tipo = tipo;
			this.ficha = ficha;
			this.setFim(true);
		}
	}
	
	public Aposta (Type tipo, int ficha, Object value) {
		this.tipo = tipo;
		this.ficha = ficha;
		this.setFim(true);
		switch (tipo) {
		case NUMERO:
			this.numero = (int) value;
			break;
		case DUZIA:
			this.doze = (DUZIA) value;
			break;
		case LINHA:
			this.linha = (LINHA) value;
			break;
		case PARIDADE:
			this.par = (PARIDADE) value;
			break;
		case COR:
			this.cor = (COR) value;
			break;
		case ALTOBAIXO:
			this.aob = (ALTOBAIXO) value;
			break;
		case COLUNA:
			//this.col = (COLUNA) value;
			this.col = (int) value;
			break;
		case QUADRA:
			this.four_num = (int[]) value;
		default:
			break;
		}
	}
	
	public Object getAposta() {
		switch (tipo) {
		case NUMERO:
			return this.numero;
		case DUZIA:
			return this.doze;
		case LINHA:
			return this.linha;
		case PARIDADE:
			return this.par;
		case COR:
			return this.cor;
		case ALTOBAIXO:
			return this.aob;
		case COLUNA:
			return this.col;
		case QUADRA:
			return this.four_num;
		default:
			return 0;
		}
	}
	
	//o que pagar se a aposta for acertada
	public int retorno() {
		switch (tipo) {
		case NUMERO:
			return this.ficha*36;
		case DUZIA: 
			return this.ficha*3;
		case LINHA:
			return this.ficha*3;
		case PARIDADE:
			return this.ficha*2;
		case COR:
			return this.ficha*2;
		case ALTOBAIXO:
			return this.ficha*2;
		case COLUNA:
			return this.ficha*12;
		case QUINTA: 
			return this.ficha*7;
		case QUADRA: 
			return this.ficha*9;
		default:
			return 0;
		}
	}
	
	public boolean teste(int n) {
		//testa se o NUMERO e zero
		if (n == 0 && this.tipo == Type.NUMERO) {
			return n == this.numero;
		}
		//testa se o NUMERO e 00 (roleta americana)
		if (n == 37 && this.tipo == Type.NUMERO) {
			return n == this.numero;
		}
		//caso passe nos testes anteriores, testamos as outras apostas
		switch (this.tipo) {
		case NUMERO:
			return n == this.numero;
		case DUZIA:
			if (this.doze == DUZIA.PRIM) {
				return n <= 12 && n < 0;
			} else if (this.doze == DUZIA.SEG) {
				return n <= 24 && n > 12;
			} else {
				return n > 24 && n < 37;
			}
		case LINHA:
			if (this.linha == LINHA.PRIM) {
				//1a LINHA: 3 6 9 12 15 18 21 24 27 30 33 36
				return n%3 == 0 && n != 0;
			} else if (this.linha == LINHA.SEG) {
				//2a LINHA 2 5 8 11 15 17 20 23 26 29 32 35
				for (int i = 2; i < 36; i+=3) {
					if (n == i) {
						return true;
					}
				}
				return false;
			} else {
				//3a LINHA 1 4 7 10 13 16 19 22 25 28 31 34
				for (int i = 1; i < 36; i += 3) {
					if (n == i) {
						return true;
					}
				}
				return false;
			}
		case PARIDADE:
			if (n%2 == 0) {
				return this.par == PARIDADE.PAR && n != 0;
			}
			return this.par == PARIDADE.IMPAR;
		case COR:
			if (this.cor == COR.PRETO && n != 0) {
				if (n <= 10) {
					return n%2 == 0;
				} else if (n < 20){
					return n%2 == 1;
				} else if (n < 29) {
					return n%2 == 0;
				} else {
					return n%2 == 1;
				}
			} else if (n != 0) {
				if (n <= 10) {
					return n%2 == 1;
				} else if (n < 20){
					return n%2 == 0;
				} else if (n < 29) {
					return n%2 == 1;
				} else {
					return n%2 == 0;
				}
			} else {
				return false;
			}
		case ALTOBAIXO: 
			if (this.aob == ALTOBAIXO.ALTO) {
				return n > 18;
			} else {
				return n <= 19 && n != 0;
			}
		case COLUNA:
			return (((n-1)/3 + 1) == this.col && n != 0 && n != 37);
		case QUINTA:
			int[] valido = {0, 1, 2, 3, 37};
			for (int i = 0; i < valido.length; i++) {
				if (valido[i] != n) {
					return false;
				}
			}
			return true;
		case QUADRA:
			for (int i = 0; i < four_num.length; i++) {
				if (four_num[i] == n) {
					return true;
				}
			}
		default:
			return false;
		}
	}
	
	//serve PARa a roleta francesa
	public boolean get1to1() {
		if (this.tipo == Type.ALTOBAIXO || this.tipo == Type.COR || this.tipo == Type.PARIDADE) {
			return true;
		} else {
			return false;
		}
	}
	
	public int getFicha() {
		return ficha;
	}
	
	public boolean isFim() {
		return fim;
	}
	public void setFim(boolean fim) {
		this.fim = fim;
	}

	public enum Type {
		NUMERO, DUZIA, LINHA, COLUNA, PARIDADE, COR, ALTOBAIXO, QUINTA, QUADRA;
	}
	public enum PARIDADE {
		PAR, IMPAR;
	}
	public enum DUZIA {
		PRIM, SEG, TERC;
	}
	public enum LINHA {
		PRIM, SEG, TERC;
	}
	public enum COR {
		VERMELHO, PRETO;
	}
	public enum ALTOBAIXO {
		ALTO, BAIXO;
	}
	
}
