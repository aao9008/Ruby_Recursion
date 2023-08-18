# Function accepts an array as input
def mergeSort(array)
  # Return if array length is less than 2
  if array.length < 2
    return array 
  # Else split the array in half
  else 
    # Sort the left half of the array
    left = mergeSort(array.slice!(0,array.length/2))

    # Sort the right half of the array
    right = mergeSort(array)

    # Merge the sorted lists
    # Until both left and right arrays are empty compare values and merge into new array as sorted
    sorted_arr = []
    
    until left.length == 0 && right.length == 0 do
      # Check for cases where one side of array has no values left
      if left.length == 0 && right.length > 0
        return sorted_arr.concat(right)
      elsif right.length == 0 && left.length > 0
        return sorted_arr.concat(left)
      end

      # For all other cases compare the first value of each array and append the lower value to the sorted array 
      if left[0] >= right[0]
        sorted_arr << right[0]
        right = right.drop(1)
      else
        sorted_arr << left[0]
        left = left.drop(1)
      end
    end

    # If entire until loop completes, then array is sorted an return value
    return sorted_arr     
  end
end