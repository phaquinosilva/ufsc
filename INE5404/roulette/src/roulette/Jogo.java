package roulette;

import java.util.List;
import java.util.LinkedList;
import java.util.Scanner;

public class Jogo {
	private Roleta roleta;
	private List<Jogador> jogadores = new LinkedList<Jogador>();
	private Scanner in = new Scanner(System.in);
		
	//metodos especificos do funcionamento do jogo
	public Roleta defRoleta() {
		System.out.print("\r\n" + 
				"--------------*Jogo da Roleta*--------------------------------\r\n" + 
				"Insira:\r\n" + 
				"1 - para a Roleta Americana (0 e 00)\r\n" + 
				"2 - para a Roleta Europeia (somente um 0)\r\n" + 
				"3 - para a Roleta Francesa (regra \"En Prison\")\r\n");
		int tipoRoleta = in.nextInt();
		while (tipoRoleta > 3 || tipoRoleta < 1) {
			System.out.println("Por favor, entre um valor válido. \nEntrada:");
			tipoRoleta = in.nextInt();
		}
		if (tipoRoleta == 1) {
			System.out.println("\n-----------------*ROLETA AMERICANA*---------------------------\r\n");
			this.roleta = new RoletaAmericana();			
		} else if (tipoRoleta == 2) {
			System.out.println("\n------------------*ROLETA EUROPEIA*---------------------------\r\n");
			this.roleta = new RoletaEuropeia();			
		} else {
			System.out.println("\n------------------*ROLETA FRANCESA*---------------------------\r\n");
			this.roleta = new RoletaFrancesa();			
		}
		return roleta;
	}
	
	public void setJogadores() {
		System.out.println("\nEntre com o número de jogadores:");
		int numJogadores = in.nextInt(); 
		while (numJogadores > 8 || numJogadores < 1) {
			System.out.println("Por favor, entre um numero válido de jogadores.");
			numJogadores = in.nextInt();
		}
		int i = 0;
		while(i < numJogadores) {
			jogadores.add(new Jogador());
			System.out.printf("\nJogador %d, escreva seu nome: ", i+1);
			jogadores.get(i).setNome(in.next());
			i++;
		}
	}
	
	public void coletaApostas() {
		
		int aposta, tipo, num;
		
		for (Jogador j: jogadores) {
		
			System.out.printf("\r\n" + 
					"%s, você tem %d fichas."
					+ "\nQual será o valor da sua aposta nesta rodada?\r\n" + 
					"Entrada:", j.getNome(), j.getFichas());
			
			//def o numero de fichas apsotadas
			aposta = j.apostaFicha(in.nextInt());
			while (aposta == -1) {
				System.out.println("Você não tem fichas suficientes, por favor entre outro valor:");
				aposta = j.apostaFicha(in.nextInt());
			}
			
			if (j.getSemAposta() == 3) {
			
				System.out.println("Você já não aposta há 3 rodadas. Por favor, aposte algum valor.");
				while (aposta == 0) {
					System.out.println("Sua aposta:");
					aposta = j.apostaFicha(in.nextInt());
					while (aposta == -1) {
						System.out.println("Você não tem fichas suficientes, por favor entre outro valor:");
						aposta = j.apostaFicha(in.nextInt());
					}
				}
			}
			
			if (aposta > 0) {
				
				System.out.print("\r\n" + 
						"Insira o tipo de aposta:\r\n" + 
						"1 - Número\r\n" + 
						"2 - Dúzia\r\n" + 
						"3 - Linha\r\n" + 
						"4 - Coluna\r\n" + 
						"5 - Cor\r\n" + 
						"6 - Paridade\r\n" + 
						"7 - Alto ou baixo\r\n" +
						"8 - Aposta em quatro números"); // to-do
				if (roleta instanceof RoletaAmericana) {
					System.out.println("\n9 - 1, 2, 3, 0, e 00");
				}
				tipo = in.nextInt();
				if (!(roleta instanceof RoletaAmericana)) {
					while (tipo > 9) {
						System.out.println("Por favor, entre um valor válido. \nEntrada:");
						tipo = in.nextInt();
					}
				} else {
					while (tipo > 8) {
						System.out.println("Por favor, entre um valor válido. \nEntrada:");
						tipo = in.nextInt();
					}
				}
				switch (tipo) {
				case 1:
					String tmp;
					System.out.println("\r\n" + 
							"Você escolheu \"Número\". Insira o número de sua aposta:\r\n" + 
							"Entrada:");
					tmp = in.next();
					if (Integer.parseInt(tmp) <= 36){
						j.fazerAposta(new Aposta(Aposta.Type.NUMERO, aposta, Integer.parseInt(tmp)));
					} else if (roleta instanceof RoletaAmericana && tmp.equals("00")) {
						//para a versao americana, o 00 será representado pelo numero 37
						j.fazerAposta(new Aposta(Aposta.Type.NUMERO, aposta, 37));
					} else {
						while (Integer.parseInt(tmp) > 36) {
							System.out.println("Por favor, entre um valor válido. \nEntrada:");
							tmp = in.next();
							j.fazerAposta(new Aposta(Aposta.Type.NUMERO, aposta, Integer.parseInt(tmp)));
						}
					}
					break;
				case 2:
					System.out.println("\r\n" + 
							"Você escolheu \"Dúzia\". Insira a dúzia de sua aposta:\r\n" + 
							"1 - De 1 a 12\r\n" + 
							"2 - De 13 a 24\r\n" + 
							"3 - De 25 a 36\r\n" + 
							"Entrada:");
					num = in.nextInt();
					if (num == 1) {
						j.fazerAposta(new Aposta(Aposta.Type.DUZIA, aposta, Aposta.DUZIA.PRIM));
					} else if (num == 2) {
						j.fazerAposta(new Aposta(Aposta.Type.DUZIA, aposta, Aposta.DUZIA.SEG));
					} else {
						j.fazerAposta(new Aposta(Aposta.Type.DUZIA, aposta, Aposta.DUZIA.TERC));
					}
					break;
				case 3:
					System.out.println("\r\n" + 
							"Você escolheu \"Linha\". Insira a linha de sua aposta:\r\n" + 
							"1 - 3 6 9 12 15 18 21 24 27 30 33 36\r\n" + 
							"2 - 2 5 8 11 15 17 20 23 26 29 32 35\r\n" + 
							"3 - 1 4 7 10 13 16 19 22 25 28 31 34\r\n" + 
							"");
					num = in.nextInt();
					if (num == 1) {
						j.fazerAposta(new Aposta(Aposta.Type.LINHA, aposta, Aposta.LINHA.PRIM));
					} else if (num == 2) {
						j.fazerAposta(new Aposta(Aposta.Type.LINHA, aposta, Aposta.LINHA.SEG));
					} else {
						j.fazerAposta(new Aposta(Aposta.Type.LINHA, aposta, Aposta.LINHA.TERC));
					}
					break;
				case 4:
					System.out.println("\r\n" + 
							"Você escolheu \"Coluna\". Insira a coluna de sua aposta:\r\n" + 
							"1 - 1 2 3\r\n" + 
							"2 - 4 5 6\r\n" + 
							"3 - 7 8 9\r\n" + 
							"4 - 10 11 12\r\n" + 
							"5 - 13 14 15\r\n" + 
							"6 - 16 17 18\r\n" + 
							"7 - 19 20 21\r\n" + 
							"8 - 22 23 24\r\n" + 
							"9 - 25 26 27\r\n" + 
							"10 - 28 29 30\r\n" + 
							"11 - 31 32 33\r\n" + 
							"12 - 34 35 36");
					num = in.nextInt();
					while (num < 1 || num > 12) {
						System.out.println("Por favor, entre um valor válido.");
						num = in.nextInt();
					}
					if (num > 0 && num <= 12) {
						j.fazerAposta(new Aposta(Aposta.Type.COLUNA, aposta, num));
					}
					break;
				case 5:
					System.out.println("\r\n" + 
							"Você escolheu \"Cor\". Insira a cor de sua aposta:\r\n" + 
							"1 - Vermelho (#)\r\n" + 
							"2 - Preto ( )");
					num = in.nextInt();
					if (num == 1) {
						j.fazerAposta(new Aposta(Aposta.Type.COR, aposta, Aposta.COR.VERMELHO));
					} else {
						j.fazerAposta(new Aposta(Aposta.Type.COR, aposta, Aposta.COR.PRETO));
					}
					break;
				case 6:
					System.out.println("\r\n" + 
							"Você escolheu \"Paridade\". Insira a sua aposta:\r\n" + 
							"1 - Par\r\n" + 
							"2 - Impar\r\n" + 
							"");
					num = in.nextInt();
					if (num == 1) {
						j.fazerAposta(new Aposta(Aposta.Type.PARIDADE, aposta, Aposta.PARIDADE.PAR));
					} else {
						j.fazerAposta(new Aposta(Aposta.Type.PARIDADE, aposta, Aposta.PARIDADE.IMPAR));
					}
					break;
				case 7:
					System.out.println("\r\n" + 
							"Você escolheu \"Alto ou Baixo\". Insira a sua aposta:\r\n" + 
							"1 - Alto (19 a 24)\r\n" + 
							"2 - Baixo (1 a 18)");
					num = in.nextInt();
					if (num == 1) {
						j.fazerAposta(new Aposta(Aposta.Type.ALTOBAIXO, aposta, Aposta.ALTOBAIXO.ALTO));
					} else {
						j.fazerAposta(new Aposta(Aposta.Type.ALTOBAIXO, aposta, Aposta.ALTOBAIXO.BAIXO));
					}
					break;
				case 8:
					System.out.println("Você escolheu a aposta em quatro números. Entre os números de sua aposta separados por espaço:");
					int[] mult_aposta = new int[4];
					for (int i = 0; i < mult_aposta.length; i++) {
						mult_aposta[i] = in.nextInt();
					}
					j.fazerAposta(new Aposta(Aposta.Type.QUADRA, aposta, mult_aposta));
					break;
				case 9:
					System.out.println("Você escolheu a aposta em 1, 2, 3, 0 e 00.");
					j.fazerAposta(new Aposta(Aposta.Type.QUINTA, aposta));
					break;
				}
			} else {
				//nenhuma aposta foi feita
				j.fazerAposta(null);
			}
		}
		System.out.println("\nAs apostas foram feitas!\n");
	}
	
	public void rodada() {
		
		//int sorteado = roleta.giraRoleta();
		int sorteado = 10; //teste do metodo coluna
		//int sorteado = 0; //teste da regra En Prisons
		System.out.printf("\nO número sorteado foi...	%d", sorteado);
		
		for (Jogador j: jogadores) {
			
			//testamos as apostas feitas
			if(j.getAposta()!= null) {	
				
				//se a aposta foi certa
				if(j.getAposta().teste(sorteado)) { 
					
					//a roleta faz o pagamento, de acordo com a aposta feita
					System.out.printf("\n%s, você ganhou %d fichas!  :) ", j.getNome(), j.getAposta().retorno() - j.getAposta().getFicha());
					j.ganhou(j.getAposta().retorno());
					
				} else {
					
					//se a roleta for francesa, temos a regra En Prison:
					if (roleta instanceof RoletaFrancesa && sorteado == 0) {
						
						// ometodo perdeu devolve ao jogador metade do que ele apostou
						j.perdeu(j.getAposta().getFicha());
						System.out.printf("\n%s, você perdeu, mas ganhou metade das suas fichas de volta.", j.getNome());
					
					//se a roleta for francesa, mas sorteado != 0; ou a roleta nao for francesa
					} else {
						
						//mostra quantas fichas o jogador perdeu na rodada
						System.out.printf("\n%s, você perdeu %d fichas.", j.getNome(), j.getAposta().getFicha());
						
					}
				}
			}	
		}		
		System.out.println();
	}
	
	public void sair() {
		System.out.println("\nAlgum jogador deseja deixar a mesa? (digite \"s\" para sim, ou \"n\" para não)");
		if (in.next().equals("s")) {
			System.out.println("Digite o nome do jogador que deseja sair: ");
			String nome = in.next();
			for (Jogador j: jogadores) {
				if (j.getNome().equals(nome)) {
					System.out.printf("\nAté a próxima, %s!\n", j.getNome());
					jogadores.remove(j);					
					break;
				}
			}
		} else {
			System.out.println("Agora, façamos as apostas!");
		}
	}
	
	public void temPerdedores() {		
		
		for (Jogador j : jogadores) {
			int aux = jogadores.indexOf(j);
			if (j.getFichas() <= 0) {
				System.out.printf("%s, você perdeu!\n", j.getNome());
				jogadores.remove(aux);
				temPerdedores();
			}
		}
		
	}
	
	//metodo que controla o jogo
	public void jogar() {
		boolean jogando = true;
		defRoleta();
		setJogadores();

		while (jogando) {
			
			if (roleta.getBudget() <= 0 || jogadores.size() == 0) {
				
				System.out.println("O jogo terminou!"); 
				jogando = false;
				
			} else {
				
				coletaApostas();
				rodada();
				temPerdedores();
				if (jogadores.size()!= 0) {
					sair();
				}
				
			}
			
		}
	}
	
	//roda o jogo
	public static void main(String[] args) {
		Jogo jogo = new Jogo();
		jogo.jogar();
	}
}