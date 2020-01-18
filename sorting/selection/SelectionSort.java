package sorting.selection;

import java.util.Arrays;

public class SelectionSort {
  public static void selectionSort(int[] arr) {
    int min, temp;

    for (int i = 0; i < arr.length; i++) {

      min = i;
      for (int j = i + 1; j < arr.length; j++) {
        if (arr[j] < arr[min]) {
          min = j;
        }
      }

      temp = arr[min];
      arr[min] = arr[i];
      arr[i] = temp;
    }
  }

  public static void main(String[] args) {
    int[] arr = { 10, 9, 6, 5, 8, -1, -6 };

    selectionSort(arr);

    System.out.println(Arrays.toString(arr));
  }
}
