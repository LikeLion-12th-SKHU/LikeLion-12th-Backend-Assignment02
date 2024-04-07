package T2;

public class Test2 {
    public static double action(ArrayProcessing arrayProcessing){
        double[] array = {1, 2, 3, 4, 5, 6};

        return arrayProcessing.apply(array);
    }

    public static void main(String[] args) {
        double ans1 = action((array ->{
            double max = Double.MIN_VALUE;
            for (double num: array){
                max = Math.max(max,num);
            }
            return max;
        }));
        System.out.println(ans1);

        double ans2 = action(array -> {
            double sum = 0;
            for (double num : array) {
                sum += num;
            }
            return sum / array.length;
        });
        System.out.println(ans2);

    }
}
