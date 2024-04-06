package T2;

import java.util.Arrays;
import java.util.Optional;
import java.util.OptionalDouble;

public class Test2 {
	public static double action(ArrayProcessing arrayProcessing) {
		double[] array = {1,2,3,4,5,6};
		return arrayProcessing.apply(array);
	}

	public static void main(String[] args) {
		double ans1 = action(array -> {
			double maxValue=Double.MIN_VALUE;
			for (double x : array){
				maxValue=Math.max(maxValue,x);
			}
			return maxValue;
		});
		System.out.println(ans1);

		double ans2 = action((array -> {
			double avgValue = 0;
			for (double x: array){
				avgValue+=x;
			}
			return avgValue/array.length;
		}));
		System.out.println(ans2);
	}


}
