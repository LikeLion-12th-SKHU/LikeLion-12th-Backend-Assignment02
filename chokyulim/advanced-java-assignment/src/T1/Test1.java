package T1;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

public class Test1 {
    public static List<Integer> list = new ArrayList<>();
    public static void main(String[] args) {
        list = Arrays.asList(1, 2, 3, 4, 5, 6);

        double avg = list.stream()
                .map(arr -> Math.sqrt(arr))
                .mapToDouble(Double::doubleValue)
                .average()
                .orElse(Double.NaN);

        System.out.println(avg);
    }
}
