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
			double maxValue=Arrays.stream(array).max().getAsDouble();
			return maxValue;
		});
		System.out.println(ans1);

		double ans2 = action((array -> {
			double avgValue = 0;
			avgValue= Arrays.stream(array).average().getAsDouble();
			return avgValue;
		}));
		System.out.println(ans2);
	}


}
