def selection_sort(arr, i, len)
  min = i

  # find the min
  for j in (i + 1)..len
    min = j if arr[j] < arr[min]
  end

  # swap
  temp = arr[min]
  arr[min] = arr[i]
  arr[i] = temp

  i < len ? selection_sort(arr, i + 1, len) : arr
end

arr = [10, 9, 6, 5, 8, -1, -6, 2, 5, -44]

p selection_sort(arr, 0, arr.length - 1)
