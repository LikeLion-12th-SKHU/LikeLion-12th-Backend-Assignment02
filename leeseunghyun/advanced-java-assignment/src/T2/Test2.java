package T2;

import org.w3c.dom.ls.LSOutput;

public class Test2 {
    public static double action(ArrayProcessing arrayProcessing) {
        double[] array = {1, 2, 3, 4, 5, 6};
        return arrayProcessing.apply(array);
    }

    public static void main(String[] args) {
        double ans1 = action((array -> {

            double max = array[0];
            for (int i = 1; i < array.length; i++) {
                if (array[i] > max) {
                    max = array[i];
                }
            }
            return max;
        }));
        System.out.println(ans1);


        double ans2 = action((array -> {
            double sum = 0;
            for (double num : array) {
                sum += num;
            }
            return sum / array.length;
        }));
        System.out.println(ans2);

    }
}
