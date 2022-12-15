import java.rmi.Naming;

public class ClientList1 {

    public static void main(String[] args){
        ListInterface remoteList;
        Object element;
        
        try {
            remoteList = (ListInterface)Naming.lookup("rmi://localhost/RemoteList");
            remoteList.add(0, "Primeiro Elemento");
            remoteList.add(1, "Segundo Elemento");
            remoteList.add(2, "Terceiro Elemento");
            element = remoteList.get(0);
            System.out.println("Tamanho da lista: " + remoteList.size());
            System.out.println("Elemento no índice 0: " + element.toString());
            element = remoteList.get(1);
            System.out.println("Elemento no índice 1: " + element.toString());
            element = remoteList.get(2);
            System.out.println("Elemento no índice 2: " + element.toString());
        } catch (Exception e) {
            System.out.println("ClientList exception:" + e);
            return;
        }
    }
}
