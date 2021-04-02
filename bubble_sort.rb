array_to_sort = [4, 3, 78, 2, 0, 2]

def bubble_sort(array)
  i = 0
  while i < array.length
    j = 1
    while j < array.length
      if array[j - 1] > array[j]
        variable_for_exchanges = array[j - 1]
        array[j - 1] = array[j]
        array[j] = variable_for_exchanges
      end
      j += 1
    end
    i += 1
  end
  array
end

p bubble_sort(array_to_sort)

def bubble_sort_by(array)
  i = 0
  while i < array.length
    j = 1
    while j < array.length
      element_to_sorted = yield(array[j - 1], array[j])
      if element_to_sorted.positive?
        variable_for_exchanges = array[j - 1]
        array[j - 1] = array[j]
        array[j] = variable_for_exchanges
      end
      j += 1
    end
    i += 1
  end
  array
end

p bubble_sort_by(["hi", "hey", "hello"]) { |left, right| left.length - right.length }
