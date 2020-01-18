def bubble_sort(arr)
  len = arr.length - 1

  # n - 1 passes
  for k in 0..len do
    # go through all elements
    # minus the ones that are already sorted (k)
    for i in 0..(len - 1 - k) do
      next unless arr[i] > arr[i + 1]

      temp = arr[i]
      arr[i] = arr[i + 1]
      arr[i + 1] = temp
    end
  end

  arr
end

p bubble_sort([10, 9, 6, 5, 8, -1, -6, 2, -44])
