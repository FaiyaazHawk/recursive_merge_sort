# frozen_string_literal: true

# define merge sort with merge

def merge_sort(array)
  # base case
  return array if array.length < 2

  # split array
  middle = (array.length / 2)
  left = array[0...middle]
  right = array[middle...(array.length)]

  sorted_left = merge_sort(left)
  sorted_right = merge_sort(right)
  merge(sorted_left, sorted_right)
end

def merge(left, right, sorted = [])
  until left.empty? || right.empty?
    sorted << if left.first < right.first
                left.shift
              else
                right.shift
              end
  end
  sorted + left + right # catchall once one of the array is empty. the other should be sorted.
end

test = [3, 4, 1, 2, 6, 5]
p merge_sort(test)
