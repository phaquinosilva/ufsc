import java.rmi.*;

public class ClientList {

    public static void main(String[] args){
        ListInterface remoteList;
        Object element;
        
        try {
            remoteList = (ListInterface)Naming.lookup("rmi://localhost/ListInterface");
            remoteList.add(0, "batata");
            element = remoteList.get(0);
            System.out.println(element.toString());
        } catch (Exception e) {
            System.out.println("ClientList exception:" + e);
            System.exit(1);
        }
    }
}
