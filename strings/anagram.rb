def anagram?(a, b)
  arr_a = a.chars
  arr_b = b.chars
  return false unless arr_a.size == arr_b.size

  map_a = arr_a.each_with_object(Hash.new(0)) { |c, map| map[c] += 1 }
  arr_b.each { |c| map_a[c] -= 1 if map_a[c] > 0 }
  arr_a.each { |c| return false if map_a[c] > 0 }

  true
end
