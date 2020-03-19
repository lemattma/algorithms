def insertion_sort(arr)
  len = arr.length - 1

  for i in 1..len
    value = arr[i]
    hole = i

    # shift values to the right
    # starting from hole going backwards
    # until previous is greater or hole is 0
    while hole > 0 && arr[hole - 1] > value
      arr[hole] = arr[hole - 1]
      hole -= 1
    end

    arr[hole] = value
  end

  arr
end

p insertion_sort [10, 9, 6, 5, 8, -1, -6]
