package sorting.insertion;

import java.util.Arrays;

public class InsertionSort {
  public static void insertionSort(int[] arr) {
    int value, hole;

    for (int i = 1; i < arr.length; i++) {
      value = arr[i];
      hole = i;

      // shift values to the right
      while (hole > 0 && arr[hole - 1] > value) {
        arr[hole] = arr[hole - 1];

        hole--;
      }

      // then current value into the hole position
      arr[hole] = value;
    }
  }

  public static void insertionSort2(int[] arr) {
    int temp, value, hole;

    for (int i = 1; i < arr.length; i++) {
      value = arr[i];
      hole = i;

      // swap values
      while (hole > 0 && arr[hole - 1] > value) {
        temp = arr[hole - 1];
        arr[hole - 1] = arr[hole];
        arr[hole] = temp;

        hole--;
      }
    }
  }

  public static void main(String[] args) {
    int[] arr = { 10, 9, 6, 5, 8, -1, -6 };

    insertionSort(arr);

    System.out.println(Arrays.toString(arr));
  }
}
