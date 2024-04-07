package T1;

import java.util.*;

public class Test1 // 영상보고 따라하여 일부 코드는 날렸습니다.
{
    public static List<Integer> list = Arrays.asList(1,2,3,4,5,6);
    public static void main(String[] args)
    {
        double avg = list.stream().mapToDouble(Math::sqrt).average().orElseThrow(NoSuchElementException::new);
        System.out.println(avg);
    }
}
//참조1 : https://youtu.be/7Kyf4mMjbTQ?feature=shared, 스트림의 특징 - 남궁성의 정석코딩
//참조2 : https://youtu.be/AOw4cCVUJC4?feature=shared, 스트림 만들기 - 상동
//참조3 : https://youtu.be/iY8ta9upajE?feature=shared, 스트림의 연산 - 상동