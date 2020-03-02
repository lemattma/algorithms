class MinHeap
  def initialize(arr)
    @arr = []
    p arr

    while arr.any?
      @arr << arr.pop
      heapify_up(@arr.size - 1)
    end
  end

  def delete_at(index)
    @arr[index] = @arr.pop
    heapify_down(index)
  end

  def add(value)
    @arr << value
    heapify_up(@arr.size - 1)
  end

  def heapify_down(index)
    while left_child(index)
      min_child = right_child(index) && right_child(index) < left_child(index) ? right_child_idx(index) : left_child_idx(index)

      break if @arr[index] <= @arr[min_child]

      swap(min_child, index)
      index = min_child
    end
  end

  def heapify_up(index)
    while parent(index) && parent(index) > @arr[index]
      swap(parent_idx(index), index)
      index = parent_idx(index)
    end
  end

  def swap(i, j)
    temp = @arr[i]
    @arr[i] = @arr[j]
    @arr[j] = temp
  end

  def left_child_idx(index)
    index * 2 + 1
  end

  def right_child_idx(index)
    index * 2 + 2
  end

  def parent_idx(index)
    (index - 1) / 2
  end

  def left_child(index)
    @arr[left_child_idx(index)]
  end

  def right_child(index)
    @arr[right_child_idx(index)]
  end

  def parent(index)
    @arr[parent_idx(index)] if parent_idx(index) > -1
  end

  def inspect
    @arr
  end

  def draw
    arr = @arr.dup

    levels = []
    level_no = 1

    while arr.any?
      levels << arr.shift(level_no)
      level_no *= 2
    end

    max_chars = (2**(levels.size - 1)) * 6
    puts ''.ljust(max_chars, '-')

    current_lvl = 1
    while levels.any?
      lvl_max_els = 2**(current_lvl - 1)
      spaces_for_each_el = (max_chars - (4 * lvl_max_els)) / lvl_max_els
      el_pad = ' '.ljust(spaces_for_each_el / 2)
      lvl = levels.shift.map do |i|
        "#{el_pad}(#{i.to_s.ljust(2)})#{el_pad}"
      end
      puts lvl.join('')
      current_lvl += 1
    end

    puts ''.ljust(max_chars, '-')
    puts ''
  end
end

heap = MinHeap.new(
  Array.new(7) { rand(99) }
)
heap.draw
heap.delete_at(0)
heap.draw
heap.add(33)
heap.draw
