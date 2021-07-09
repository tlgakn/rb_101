#ls solution
def bubble_sort!(array)
  loop do
    swapped = false
    1.upto(array.size - 1) do |index|
      next if array[index - 1] <= array[index]
      array[index - 1], array[index] = array[index], array[index - 1]
      swapped = true
    end

    break unless swapped
  end
  #nil
end

# my solution
def bubble_sort!(array)
  until array == array.sort
    idx = 0
    while idx <= array.length - 2
      if array[idx] > array[idx + 1]
        array[idx], array[idx + 1] = array[idx + 1], array[idx]
      end
      idx += 1
    end
  end
  array
end