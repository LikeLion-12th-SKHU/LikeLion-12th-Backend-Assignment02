package T1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Test1 {
    public static List<Integer> list = new ArrayList<>();
    public static void main(String[] args) {
        list = Arrays.asList(1, 2, 3, 4, 5, 6);

        double avg = list.stream()
                .mapToDouble(Math::sqrt)
                // map: 요소 변환할 때 제네릭 타입 유지
                // mapToDouble: 요소를 double 값으로 변환 - 반환되는 스트림: DoubleStream
                .average()
                .orElseThrow(NoSuchElementException::new);
                // NoSuchElementException: 요청한 요소나 값이 존재하지 않을 때 발생시키는 예외
                // ::new: 생성자 참조

        System.out.println(avg);
    }
}
