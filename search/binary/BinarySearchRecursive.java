package search.binary;

public class BinarySearchRecursive {
  private static int search(int[] arr, int x, int left, int right) {
    if (left > right) {
      return -1;
    }

    int mid = (left + right) / 2;

    // return mid if found
    if (x == arr[mid]) {
      return mid;
    }

    // discard the left section movin left after mid
    else if (x > arr[mid]) {
      return search(arr, x, mid + 1, right);
    }

    // discard right section moving right before mid
    else {
      return search(arr, x, left, mid - 1);
    }
  }

  public static void main(String[] args) {
    int[] arr = { -44, -1, 3, 5, 8, 10, 20 };
    int key = -1;

    int index = search(arr, key, 0, arr.length - 1);

    if (index != -1) {
      System.out.println("Element found at index " + index);
    } else {
      System.out.println("Element was not found");
    }
  }
}