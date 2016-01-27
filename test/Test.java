import java.util.Random;

public class Test {
    public static void main(String[] args) {
        int[] arr = {0,1,2,3,4,5,6,7,8,9};
        Random random = new Random();
        for (int i = 0; i < 5; i++){
            System.out.println(arr[random.nextInt(arr.length)]);
        }
    }
}
