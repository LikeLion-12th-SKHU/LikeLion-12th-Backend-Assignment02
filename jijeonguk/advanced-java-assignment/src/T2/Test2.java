package T2;

public class Test2 {

    public static double action(ArrayProcessing arrayProcessing){
        double[] array = {1,2,3,4,5,6};

        return arrayProcessing.apply(array);
    }

    public static void main(String[] args) {
        // 문제2: 주어진 배열에서 최댓값을 계산하는 람다식을 작성해 주세요
        double ans1 =action((array -> {
            double max = 0;

            for(double i : array){
                if ( i > max)
                    max = i;
            }
            return max;
        }));
        System.out.println(ans1);

        // 문제3: 주어진 배열에서 평균값을 계산하는 람다식을 작성해 주세요
        double ans2 = action((array -> {
            double sum = 0;

            for(double i : array)
                sum += i;

            return  sum / array.length;
        }));
        System.out.println(ans2);
    }
}
