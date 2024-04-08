package T3;

import java.util.Scanner;

public class Test3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        try {
            int count = Integer.parseInt(scanner.nextLine());

            int array[] = new int[count];
            int sum = 0;

            for (int i = 0;i < count; i++) {
                array[i] = Integer.parseInt(scanner.next());
                sum += array[i];
            }

            System.out.println("정수들의 합은 " + sum);
        }

        catch (NumberFormatException e) {
            System.out.println("예외가 발생했습니다!");
            System.out.println("예외 정보: " + e.toString());
        }
    }
}
