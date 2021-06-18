package sistemasFinanceiros;

import java.io.*;
import java.util.*;
import java.net.*;

public class Empresa {

	private String csvFile;

	private ArrayList<String> dataList = new ArrayList<>();
	private ArrayList<Double> openList = new ArrayList<>();
	private ArrayList<Double> highList = new ArrayList<>();
	private ArrayList<Double> lowList = new ArrayList<>();
	private ArrayList<Double> closeList = new ArrayList<>();
	private ArrayList<Double> volumeList = new ArrayList<>();

	//posicionar as listas com base na primeira linha
	private ArrayList[] listVec = new ArrayList[6];

	private String name;

	public String getName() {
		return name;
	}

	public Empresa(String name) {
		this.name = name;
	}
	
	public String compraOuVende() {
		MMS mms = new MMS();
		
		return mms.compraOuVende(closeList);
	}
	
	
	//metodo que conecta a API
	public void fazRequest() { 
		
		/*defino um endereco base
		 * function=TIME_SERIES_INTRADAY -- pega info do msm dia
		 * symbol=$USERINPUT -- nome da acao q o usuario quer ver
		 * interval=5min --creio q e pra pegar as infos dos ultimos 5 min
		 * apikey=...
		 * datatype=csv --pra podermos usar os negocios q ja tinhamos pronto e nao a lib zuada do cara
		 */
		String BASE = "https://www.alphavantage.co/query?function=TIME_SERIES_INTRADAY&symbol=" + name + "&interval=5min&apikey=RO7VX832DLYEF9V5&datatype=csv";

		BufferedReader bufferedReader = null;
		InputStreamReader inputStream = null;
    	try {
			URL tryRequest = new URL(BASE);
			URLConnection connection = tryRequest.openConnection();
			//tempo pra tentar o request
			int timeOut = 3000;
			connection.setConnectTimeout(timeOut);
			connection.setReadTimeout(timeOut);
			
			//daqui pra frente, construo uma string com a info q vem do link da API -- ai a gnt tem nosso CSV
			inputStream = new InputStreamReader(connection.getInputStream());
			bufferedReader = new BufferedReader(inputStream);
			StringBuilder responseBuilder = new StringBuilder();
			
			String linha = null;
			Scanner scanner = null;
			//ajustar a listas com base no cabecalho (primeira linha)
			boolean primeiraLinha = true;

			while ((linha = bufferedReader.readLine()) != null) {
				responseBuilder.append(linha);
				responseBuilder.append("\n");
				//separo as linhas em colunas
				scanner = new Scanner(linha);
				scanner.useDelimiter(",|\\n");
				int i=0;
				
				//organizo o listVec em funcao da ordem que aparecem os titulos das colunas
				if(primeiraLinha) {
					String[] titulos = new String[6];
					while (scanner.hasNext()) {
						String coluna = scanner.next();
						
						titulos[i] = coluna;
						i++;
					}
					ajustarLists(titulos);
					primeiraLinha = false;
				} else {
					while (scanner.hasNext()) {
						String elementoColuna = scanner.next();
						//adiciono o elemento da coluna na sua respectiva lista
						if (listVec[i].equals(dataList)) {
							listVec[i].add(elementoColuna);
						} else {
							double elemDouble = Double.parseDouble(elementoColuna);
							listVec[i].add(elemDouble);
						}
						i++;
					}
				}
			}
			//retorno a string disponivel no link
			csvFile = responseBuilder.toString();
			//System.out.print(csvFile);
		} catch (FileNotFoundException e) {
			e.printStackTrace();
        } catch (IOException e) {
			e.printStackTrace();
        } finally {
            if (bufferedReader != null) {
                try {
                    bufferedReader.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
	}

	private void ajustarLists(String[] titulos) {
		for(int i=0; i<titulos.length; i++) {
			if(titulos[i].equals("timestamp")) {
				listVec[i] = dataList;
			}
			if(titulos[i].equals("open")) {
				listVec[i] = openList;			
			}
			if(titulos[i].equals("high")) {
				listVec[i] = highList;
			}
			if(titulos[i].equals("low")) {
				listVec[i] = lowList;
			}
			if(titulos[i].equals("close")) {
				listVec[i] = closeList;
			}
			if(titulos[i].equals("volume")) {
				listVec[i] = volumeList;
			}
		}
	}

	public ArrayList<Double> getLista(String type) {
		switch (type) {
			case "open" :
				return openList;
			case "high" :
				return highList;
			case "low" :
				return lowList;
			case "close" :
				return closeList;
			case "volume" :
				return volumeList;
			default :
				return null;
		}
	}

	public String getCSV() {
		return csvFile;
	}
}