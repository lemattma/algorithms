package sorting.merge;

import java.util.Arrays;

public class MergeSort {
  private static void merge(int[] arr, int[] aux, int low, int mid, int high) {
    // k aux next available position
    // i next unpicked from left
    // j next unpicked from right
    int k = low, i = low, j = mid + 1;

    while (i <= mid && j <= high) {
      if (arr[i] <= arr[j]) {
        aux[k++] = arr[i++];
      } else {
        aux[k++] = arr[j++];
      }
    }

    while (i <= mid) {
      aux[k++] = arr[i++];
    }

    for (i = low; i <= high; i++) {
      arr[i] = aux[i];
    }
  }

  private static void mergeSort(int[] arr, int[] aux, int low, int high) {
    if (low == high) {
      return;
    }

    int mid = (low + ((high - low) / 2));
    // int mid = (low + ((high - low) >> 1));

    mergeSort(arr, aux, low, mid);
    mergeSort(arr, aux, mid + 1, high);

    merge(arr, aux, low, mid, high);
  }

  public static void main(String[] args) {
    int[] arr = { 10, 9, 6, 5, 8, -1, -6, 2, -44, 1, 2 };
    int[] aux = Arrays.copyOf(arr, arr.length);

    mergeSort(arr, aux, 0, arr.length - 1);

    System.out.println(Arrays.toString(arr));
  }

}
