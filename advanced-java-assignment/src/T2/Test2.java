package T2;

import java.util.Arrays;
import java.util.NoSuchElementException;

public class Test2 {
    public static double action(ArrayProcessing arrayProcessing) {
        double[] array = {1,2,3,4,5,6};

        return arrayProcessing.apply(array);
    }
    public static void main(String[] args) {
        // 문제2 : 주어진 배열에서 최댓값을 계산하는 람다식을 작성
        double ans1 = action((array -> {
            return Arrays.stream(array)
                    .max()
                    .orElseThrow(NoSuchElementException::new);
        }));
        System.out.println(ans1);

        // 문제3 : 주어진 배열에서 평균값을 계산하는 람다식을 작성
        double ans2 = action((array -> {
            return Arrays.stream(array)
                    .average()
                    .orElseThrow(NoSuchElementException::new);
        }));
        System.out.println(ans2);
    }
}
