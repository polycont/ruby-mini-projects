def bubble_sort(array)
  loop do
    swapped = false
    array.each_with_index do |value, index|
      if index + 1 < array.length
        if value > array[index + 1]
          swapped_item = array.slice!(index)
          array.insert(index + 1, swapped_item)
          swapped = true
        end
      end
    end
    break if !swapped
  end
  return array
end

p bubble_sort([4, 2, 1, 9, 8, 8, 5, 4, 3, 1, 99, 43])