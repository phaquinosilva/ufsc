package sistemasFinanceiros;

import java.util.ArrayList;
import java.io.IOException;

public class MMS {

    public double[] calculaMMS(int periodo, ArrayList<Double> data) throws IOException {

        // read.leArquivo(csvFile);
        // ArrayList<Double> closeData = read.getLista(type);
        
        double mediaMovel[] = new double[data.size()];
        
        for (int i = 0; i < (data.size() - periodo); i++) { //6 pra fazermos a media a cada 30min
            mediaMovel[i] = 0;
            for (int j = i; j < i + periodo; j++) {
                mediaMovel[i] += data.get(j);
            }
            mediaMovel[i] = mediaMovel[i]/periodo;
            System.out.println(mediaMovel[i]);
        }
        return mediaMovel;
    }

    public String compraOuVende(ArrayList<Double> data) {
        try {
            double mms[] = calculaMMS(6, data);
            double dataValue = data.get(0), mmsValue = mms[0];
            boolean dataMaior;
            
            if (dataValue > mmsValue) {
                dataMaior = true;
            } else {
                dataMaior = false;
            }
            
            if (data.get(1) >= mms[1]) {
                if (!dataMaior) {
                    return "compra";
                }
            } else {
                if (dataMaior) {
                    return "vende";
                }
            }
            return "espere";
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }
    }
}