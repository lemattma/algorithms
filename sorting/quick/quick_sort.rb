def swap(arr, i_index, j_index)
  temp = arr[i_index]
  arr[i_index] = arr[j_index]
  arr[j_index] = temp

  arr
end

# selects an item (pivot) and split the rest interms of
# <= pivot >=
def partition(arr, a_start, a_end)
  pivot = arr[a_end]
  p_index = a_start

  # iterates through moving items <= pivot, to the beginning
  # p_index is where we'll place our pivot
  for i in a_start..(a_end - 1) do
    if arr[i] <= pivot
      swap(arr, i, p_index)
      p_index += 1
    end
  end

  # move pivot to p_index position
  swap(arr, a_end, p_index)

  p_index
end

def quicksort(arr, a_start, a_end)
  return if a_start >= a_end

  pivot = partition(arr, a_start, a_end)

  # pivot - 1 and pivot + 1 is because pivot is already sorted
  quicksort(arr, a_start, pivot - 1)
  quicksort(arr, pivot + 1, a_end)
end

a = [1, 8, 3, 4, 7, -2, 5]

quicksort(a, 0, a.length - 1)

p a
