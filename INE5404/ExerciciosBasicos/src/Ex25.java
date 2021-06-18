
public class Ex25 {
	public static boolean ehPrimo(int n) {
		int cnt = 0;
		for (int i = 1; i <= n/2; i++) {
			if (n%i == 0) {
				cnt += 1;
			}
		}
		if (cnt != 1) {
			return false;
		}
		return true;
	}
    public static void main(String[] args) {
        for (int i = 0; i < 100000; i++) {
            if (ehPrimo(i)) {
                System.out.println(i);
            }
        }
    }
}
