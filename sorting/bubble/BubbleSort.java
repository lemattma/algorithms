package sorting.bubble;

import java.util.Arrays;

public class BubbleSort {
  public static void sort(int[] arr) {
    // n - 1 passes
    for (int i = 0; i < arr.length - 1; i++) {
      // go through all elements minus the ones
      // that are already sorted (k)
      for (int j = 0; j < arr.length - 1 - i; j++) {
        if (arr[j] > arr[j + 1]) {
          int temp = arr[j];
          arr[j] = arr[j + 1];
          arr[j + 1] = temp;
        }
      }
    }
  }

  public static void main(String[] args) {
    int[] arr = { 10, 9, 6, 5, 8, -1, -6, 2, -44 };

    sort(arr);

    System.out.println(Arrays.toString(arr));
  }
}
