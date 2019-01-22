class BubbleSort
def self.bubble_sort(array)
    sorted = false
    until sorted == true
      sorted = true
      for index in (0...array.length-1) do
        if (array[index] > array[index + 1])
          array[index], array[index + 1] = array[index + 1], array[index]
          sorted = false
        end
      end
    end
    return array
end


def self.bubble_sort_by(array)
  sorted = false
  until sorted == true
    sorted = true
    for index in (0...array.length-1) do
      if yield(array[index], array[index + 1]) > 0
        array[index], array[index + 1] = array[index + 1], array[index]
        sorted = false
      end
    end
  end
  return array
    end
end
