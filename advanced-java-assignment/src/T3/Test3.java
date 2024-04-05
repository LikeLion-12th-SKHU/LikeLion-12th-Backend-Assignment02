package T3;

import java.util.Scanner;

public class Test3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int num = scanner.nextInt(); // 사용자로부터 입력받을 문자열의 개수를 입력받음
        scanner.nextLine();

        int sum = 0;

        for(int i=0; i < num; i++) {
            String a = scanner.next();

            try {
                int result = Integer.parseInt(a);

                sum += result;

            } catch(NumberFormatException e) {
                System.out.println("예외가 발생했습니다!");
                System.out.println("예외 정보 : " + e);
                return;
            }
        }

        System.out.println("정수들의 합은 " + sum);
    }
}
