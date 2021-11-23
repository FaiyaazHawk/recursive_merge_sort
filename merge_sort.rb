# define merge sort with merge

def merge_sort(array)
    #base case
    return array if array.length < 2
    #split array
    middle = (array.length / 2)
    left = array[0...middle]
    right = array[(middle)...(array.length)]
    p left
    p right
    merge_sort(left)
    merge_sort(right)
    
    sorted = []

    until left.empty? && right.empty?
        if left.first < right.first
            sorted << left.shift
        else
            sorted << right.shift
        end
    end
    sorted
    
    
end

test = [3,4,1,2,6,5]
p merge_sort(test)
