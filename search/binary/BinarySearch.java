package search.binary;

public class BinarySearch {
  private static int search(int[] arr, int x) {
    int left = 0;
    int right = arr.length - 1;

    while (left <= right) {
      int mid = (left + right) / 2;

      // return mid if found
      if (x == arr[mid]) {
        return mid;
      }

      // discard the left section movin left after mid
      else if (x > arr[mid]) {
        left = mid + 1;
      }

      // discard right section moving right before mid
      else {
        right = mid - 1;
      }
    }

    return -1;
  }

  public static void main(String[] args) {
    int[] arr = { -44, -1, 3, 5, 8, 10, 20 };
    int key = 5;

    int index = search(arr, key);

    if (index != -1) {
      System.out.println("Element found at index " + index);
    } else {
      System.out.println("Element was not found");
    }
  }
}