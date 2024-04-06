package T3;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Test3 {
    public static void main(String[] args) throws IOException {
        try (BufferedReader br = new BufferedReader(new InputStreamReader(System.in))) {
            int N = Integer.parseInt(br.readLine());
            String[] nums = br.readLine().split("\\s+");

            int sum = 0;
            for (int i = 0; i < N; i++) {
                sum += Integer.parseInt(nums[i]);
            }
            System.out.println("정수들의 합은 " + sum);
        } catch (NumberFormatException e) {
            System.out.println("예외가 발생했습니다!\n예외 정보: " + e);
        }
    }
}
