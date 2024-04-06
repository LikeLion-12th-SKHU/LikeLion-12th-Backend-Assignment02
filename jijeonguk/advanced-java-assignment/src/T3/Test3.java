package T3;

import java.util.Scanner;

public class Test3 {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        int count = scanner.nextInt();

        scanner.nextLine(); //개행이라 넣었습니다!
        String inputNumber = scanner.nextLine();

        try{
            int sum = calculate(inputNumber, count);
            System.out.println("정수들의 합은 " + sum);
        } catch(NumberFormatException e ){
            System.out.println("예외가 발생했습니다!");
            System.out.println("예외 정보: " + e.toString());
        }
    }

    public static int calculate(String inputNumber, int count) {
        String[] numbers = inputNumber.split(" ");
        int sum = 0;

        for(String number : numbers){
            sum += Integer.parseInt(number);
        }
        return sum;
    }

}
