def bubble_sort(array)
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
puts bubble_sort([4,3,78,2,0,2]).inspect

def bubble_sort_by(array)
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
  puts array.inspect
    end

    
  bubble_sort_by(["hi","hello","hey"]) do |left,right|
    left.length - right.length
  end
