package T1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.NoSuchElementException;

public class Test1 {
    public static List<Integer> list = new ArrayList<>();

    public static void main(String[] args) {
        list = Arrays.asList(1, 2, 3, 4, 5, 6);

        double avg = list.stream()//객체 생성
                .mapToDouble(Math::sqrt) //메서드 참조는 람다 표현식을 간단하게
                .average()
                .orElseThrow(NoSuchElementException::new);

                System.out.println(avg);
    }
}
