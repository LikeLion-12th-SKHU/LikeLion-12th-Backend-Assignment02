package T3;

import java.util.Scanner;

public class Test3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int sum = 0;

        try {

            int count = scanner.nextInt(); // 숫자 몇 개를 입력할 것인지 사용자로부터 입력 받음
            scanner.nextLine();

            String input = scanner.nextLine();
            String[] numbers = input.split(" ");// 입력한 숫자는 띄어쓰기로 구분

            for (String number : numbers) {
                sum += Integer.parseInt(number);
            } //각 문자열을 정수로 변환하고, 이를 sum 변수에 더하는 역할을 합니다.

            System.out.println("입력한 정수들의 합: " + sum);
        } catch (NumberFormatException e) {
            System.out.println("예외가 발생했습니다.");
            System.out.println("예외 정보: " + e.toString());
        } finally {
            scanner.close();
        }
    }
}
