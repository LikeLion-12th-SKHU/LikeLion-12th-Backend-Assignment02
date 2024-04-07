package T3;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Test3 {
    public static void main(String[] args) throws IOException {
        int sum = 0;

        BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

        int count = Integer.parseInt(br.readLine());
        try {
            String[] strNum = br.readLine().split(" ");

            for (int i = 0; i < count; i++) {
                sum += Integer.parseInt(strNum[i]);
            }
            System.out.println("정수들의 합은 "+sum);
        } catch (NumberFormatException e) {
            System.out.println("예외가 발생했습니다!");
            System.out.println("예외 정보: "+e);
        }
        br.close();
    }
}