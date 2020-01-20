def swap(arr, i_index, j_index)
  temp = arr[i_index]
  arr[i_index] = arr[j_index]
  arr[j_index] = temp

  arr
end

def partition(arr, a_start, a_end)
  pivot = arr[a_end]
  p_index = a_start

  for i in a_start..(a_end - 1) do
    if arr[i] <= pivot
      swap(arr, i, p_index)
      p_index += 1
    end
  end

  swap(arr, a_end, p_index)

  p_index
end

def quicksort(arr, a_start, a_end)
  return if a_start >= a_end

  pivot = partition(arr, a_start, a_end)

  quicksort(arr, a_start, pivot - 1)
  quicksort(arr, pivot + 1, a_end)
end

a = [1, 8, 3, 4, 7, -2, 5]

quicksort(a, 0, a.length - 1)

p a
