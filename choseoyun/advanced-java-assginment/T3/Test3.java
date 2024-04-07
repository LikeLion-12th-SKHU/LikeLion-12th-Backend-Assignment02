package T3;

import java.util.Scanner;

public class Test3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("입력할 정수의 개수를 입력하세요: ");
        int n = scanner.nextInt();
        scanner.nextLine();

        System.out.println("정수로 변환할 문자열을 입력하세요 (공백으로 구분하여 입력하세요): ");
        String input = scanner.nextLine();

        int sum = 0;
        String[] numbers = input.split(" ");

        //입력한 숫자 만큼 계산하기
        if (n == numbers.length){
            for (String number : numbers) {
                try {
                    int num = Integer.parseInt(number);
                    sum += num;
                } catch (NumberFormatException e) {
                    System.out.println("예외가 발생하였습니다!");
                }
            }
            System.out.println("정수들의 합은 " + sum);
        }
        scanner.close();

    }
}





