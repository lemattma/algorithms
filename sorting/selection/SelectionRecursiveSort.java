package sorting.selection;

import java.util.Arrays;

public class SelectionRecursiveSort {
  private static void selectionSort(final int[] arr, final int i, final int len) {
    int min, temp;

    min = i;
    for (int j = i + 1; j < arr.length; j++) {
      if (arr[j] < arr[min]) {
        min = j;
      }
    }

    temp = arr[min];
    arr[min] = arr[i];
    arr[i] = temp;

    if (i < len) {
      selectionSort(arr, i + 1, len);
    }
  }

  public static void main(final String[] args) {
    int[] arr = { 10, 9, 6, 5, 8, -1, -6, 2, -44 };

    selectionSort(arr, 0, arr.length - 1);

    System.out.println(Arrays.toString(arr));
  }
}
