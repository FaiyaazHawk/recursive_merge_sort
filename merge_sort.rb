# define merge sort with merge

def merge_sort(array)
    #base case
    return array if array.length < 2
    #split array
    middle = ((array.size) / 2)
    left = array[0...middle]
    right = array[(middle + 1)...(array.length)]
    
    merge_sort(left)
    merge_sort(right)
    
    sorted = []

    
    sorted
end

test = [3,4,1,2,6,5]
p merge_sort(test)
