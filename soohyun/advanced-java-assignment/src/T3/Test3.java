package T3;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.Arrays;

public class Test3 {
	public static void main(String[] args) {
		try (BufferedReader bf = new BufferedReader(new InputStreamReader(System.in))) {
			int a = Integer.parseInt(bf.readLine());
			String[] s = bf.readLine().split(" ");
			int result = Arrays.stream(s)
				.mapToInt(Integer::parseInt)
				.sum();
			System.out.println("정수들의 합은 " + result);
		} catch (NumberFormatException | IOException e) {
			System.out.println("예외가 발생했습니다!");
			System.out.print("예외 정보: " + e.fillInStackTrace());
		}
	}
}
