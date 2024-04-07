package T1;

import java.util.NoSuchElementException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class Test1 {
    public static List<Integer> list = new ArrayList<>();

    public static void main(String[] args) {
        list = Arrays.asList(1, 2, 3, 4, 5, 6);

        double avg = list.stream().mapToDouble(Math::sqrt).average().orElseThrow(NoSuchElementException::new);
        System.out.println(avg);
    }
}
//참조1 : https://youtu.be/7Kyf4mMjbTQ?feature=shared, 스트림의 특징 - 남궁성의 정석코딩
//참조2 : https://youtu.be/AOw4cCVUJC4?feature=shared, 스트림 만들기 - 상동
//참조3 : https://youtu.be/iY8ta9upajE?feature=shared, 스트림의 연산 - 상동
//참조4. https://sihyung92.oopy.io/af26a1f6-b327-45a6-a72b-c6fcb754e219, 자바 컨벤션 (Ctrl + alt + L)