package T2;

public class Test2 {
    public static double action(ArrayProcessing arrayProcessing) {
        double[] array = {1, 2, 3, 4, 5, 6};
        return arrayProcessing.apply(array);
    }

    public static void main(String[] args) {
        //문2. 주어진 배열에서 최댓값을 계산하는 람다식 작성
        double ans1 = action((array -> {
            double max = 0;
            for (double i : array) {
                if (i > max) max = i;
            }
            return max;
        }));
        System.out.println(ans1);

        //문3 : 주어진 배열에서 평균값을 계산하는 람다식 작성
        double ans2 = action((array -> {
            double sum = 0;
            for (double i : array)
                sum += i;
            return sum / array.length;
        }));
        System.out.println(ans2);
    }
}
// 참조1 : https://youtu.be/3wnmgM4qK30?feature=shared, 람다식 작성하는 방법 - 남궁성의 정석코딩
// 참조2 : https://engpro.tistory.com/196, 향상된 for문
// 참조3 : 오류, return문 누락
//참조4. https://sihyung92.oopy.io/af26a1f6-b327-45a6-a72b-c6fcb754e219, 자바 컨벤션 (Ctrl + alt + L)
