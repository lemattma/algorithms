package sorting.quick;

import java.util.Arrays;

public class Quicksort {
  private static void swap(int[] arr, int i, int j) {
    int temp = arr[i];
    arr[i] = arr[j];
    arr[j] = temp;
  }

  private static int partition(int[] arr, int start, int end) {
    int pValue = arr[end];
    int pIndex = start;

    for (int i = start; i <= end - 1; i++) {
      if (arr[i] <= pValue) {
        swap(arr, i, pIndex++);
      }
    }

    swap(arr, end, pIndex);

    return pIndex;
  }

  private static void quicksort(int[] arr, int start, int end) {
    if (start >= end) {
      return;
    }

    int pivot = partition(arr, start, end);

    quicksort(arr, start, pivot - 1);
    quicksort(arr, pivot + 1, end);
  }

  public static void main(String[] args) {
    int[] arr = { 10, 9, 6, 5, 8, -1, -6, 2, -44 };
    quicksort(arr, 0, arr.length - 1);

    System.out.println(Arrays.toString(arr));
  }
}