
import java.util.Scanner;

public class Ex18 {
	public static void main (String[] args) {
		int N = new Scanner(System.in).nextInt();
		String[] uni = {"", "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX"};
		String[] dez = {"", "X", "XX", "XXX", "XL", "L", "LX", "LXX", "LXXX", "XC"};
		String[] cent = {"", "C", "CC", "CCC", "CD", "D", "DC", "DCC", "DCCC", "CM"};
		String[] mil = {"", "M", "MM", "MMM"};
		
		System.out.print(mil[N/1000]);
		N = N%1000;
		System.out.print(cent[N/100]);
		N = N%100;
		System.out.print(dez[N/10]);
		N = N%10;
		System.out.print(uni[N]);
	}
}
