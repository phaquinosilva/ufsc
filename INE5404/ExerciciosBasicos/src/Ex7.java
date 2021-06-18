

//7
public class Ex7 {

	public static void main (String[] args) {
		int i = 280;
		while (i > 7) {
			i--;
			if (i%7 == 0) {
				if(i == 7) {
					System.out.print(i + ".");
				} else {
					System.out.print(i + ", ");
				}
			}
		}
	}
}
