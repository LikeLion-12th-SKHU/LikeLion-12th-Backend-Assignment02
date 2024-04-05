package T1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.NoSuchElementException;
public class Test1 {

    public static List<Integer> list = new ArrayList<>(); // 저장 리스트를 선언

    public static void main(String[] args) {
        list = Arrays.asList(1,2,3,4,5,6); // 1~6까지 숫자로 초기화

        double avg = list.stream()
                .mapToDouble(number -> Math.sqrt(number)) // 정수의 제곱근 각각 계산
                .average() // 평균 계산
                .orElseThrow(NoSuchElementException::new); // 평균값이 없을 때 예외 처리

        System.out.println(avg);
    }
}
