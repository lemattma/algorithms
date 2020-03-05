def merge_arrays(arr, aux, low, mid, high)
  k = low # aux next available position
  i = low
  j = mid + 1

  while i <= mid && j <= high
    if arr[i] <= arr[j]
      aux[k] = arr[i]
      i += 1
    else
      aux[k] = arr[j]
      j += 1
    end

    k += 1
  end

  # remaining i elements
  # no need to do it with j els since they're already sorted
  while i <= mid
    aux[k] = arr[i]
    i += 1
    k += 1
  end

  for i in low..high
    arr[i] = aux[i]
  end

  arr
end

def merge_sort(arr, aux, low, high)
  return if low == high

  mid = low + ((high - low) / 2) # low + half of current range

  merge_sort(arr, aux, low, mid)
  merge_sort(arr, aux, mid + 1, high)
  merge_arrays(arr, aux, low, mid, high)
end

arr = [10, 9, 6, 5, 8, -1, -6, 2, -44, 1, 2]

p merge_sort(arr, arr.dup, 0, arr.size - 1)
