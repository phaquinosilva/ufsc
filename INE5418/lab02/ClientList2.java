import java.rmi.Naming;

public class ClientList2 {

    public static void main(String[] args){
        ListInterface remoteList;
        Object element;
        
        try {
            remoteList = (ListInterface)Naming.lookup("rmi://localhost/RemoteList");
            remoteList.add(0, "Quarto Elemento");
            element = remoteList.get(0);
            System.out.println("Elemento no indice 0: " + element.toString());
            System.out.println("Tamanho da lista: " + remoteList.size());
            element = remoteList.remove(0);
            System.out.println("Elemento removido do índice 0: " + element.toString());
            System.out.println("Tamanho da lista: " + remoteList.size());
            element = remoteList.get(0);
            System.out.println("Elemento no indice 0: " + element.toString());
        } catch (Exception e) {
            System.out.println("ClientList exception:" + e);
            return;
        }
    }
}
