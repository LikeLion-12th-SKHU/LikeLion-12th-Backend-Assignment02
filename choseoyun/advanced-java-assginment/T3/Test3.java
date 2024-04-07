package T3;

import java.util.Scanner;

public class Test3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("입력할 정수의 개수를 입력하세요: ");
        int n = scanner.nextInt();
        scanner.nextLine(); // Consume newline character left by nextInt()

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
                   System.out.println("예외 발생: \"" + number + "\" 은(는) 정수로 변환할 수 없습니다.");
                }
            }
            System.out.println("입력된 정수들의 합: " + sum);
        }else{
            System.out.println("입력할 숫자의 개수를 확인하세요. \n" +"입력할 정수의 개수: "+ n + " 입력한 정수의 수: "+ numbers.length);
        }
        scanner.close();

    }
}


