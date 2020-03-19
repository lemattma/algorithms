def selection_sort(arr)
  len = arr.length - 1

  for i in 0..len
    min = i

    # find the min
    # i + 1 becuase i is already sorted
    for j in (i + 1)..len
      min = j if arr[j] < arr[min]
    end

    next unless min != i

    temp = arr[min]
    arr[min] = arr[i]
    arr[i] = temp
  end

  arr
end

p selection_sort [10, 9, 6, 5, 8, -1, -6]
