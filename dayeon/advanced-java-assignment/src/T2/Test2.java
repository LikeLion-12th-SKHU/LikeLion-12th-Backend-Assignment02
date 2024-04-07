package T2;

public class Test2 {

    public static double action(ArrayProcessing arrayProcessing) {
        double[] array = {1, 2, 3, 4, 5, 6};

        return arrayProcessing.apply(array);
    }

    public static void main(String[] args) {
        double ans1 = action((array -> {
            double result = 0;
            for (int i = 1; i < array.length; i++) {
                if (array[i] > array[i - 1]) {
                    result = array[i];
                }
            } return result;
        }));
        System.out.println(ans1);

        double ans2 = action((array -> {
            double result = 0;
            for (int i = 0; i < array.length; i++) {
                result += array[i];
            } return result / array.length;
        }));
        System.out.println(ans2);
    }
}
