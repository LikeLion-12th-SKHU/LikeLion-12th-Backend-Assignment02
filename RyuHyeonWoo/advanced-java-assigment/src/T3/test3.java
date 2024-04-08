package T3;

import java.util.Scanner;
public class test3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        int count = scanner.nextInt();
        scanner.nextLine();
        String inputNumber = scanner.nextLine();

        try {
            String[] number = inputNumber.split("\\s+");
            int sum = 0;
            for (int i = 0; i < count; i++) {
                sum += Integer.parseInt(number[i]);
            }
            System.out.println("정수들의 합은 " + sum);
        } catch (NumberFormatException e) {
            System.out.println("예외가 발생했습니다!");
            System.out.println("예외 정보: " + e);
        }
        scanner.close();
    }
    scanner.close();
}
