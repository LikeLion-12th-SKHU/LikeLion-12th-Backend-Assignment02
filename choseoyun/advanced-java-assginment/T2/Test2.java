package T2;

public class Test2 {

    public  static double action(ArrayProcessing arrayProcessing) {
        double[] array = {1,2,3,4,5,6};

        return arrayProcessing.apply(array);
    }
    public static void main(String[] args) {
        //문제2: 주어진 배열에서 최댓값을 계산하는 람다식을 작성

        double ans2 = action((array -> {
            double max = 0;
            for (double i : array) {
                if (i > max) //최초값 0과 배열값 비교
                    max = i; //제일 큰 값 max에 넣기
            }
            return max;
        }));
        System.out.println(ans2);

        //문제3: 주어진 배열에서 평균값을 계산하는 람다식을 작성
        double ans3 = action(array -> {
            double sum = 0;
            for (double num : array) {
                sum += num;
            }
            return sum / array.length;
        });
        System.out.println(ans3);
    }
}
