# start = index of first element and last = index of last element of array/subarray
def quick_sort(array, start = 0, last = array.length - 1)
  # Base case: Keep dividing and quick sorting array until subarray size is 1
  if start < last
    pIndex = partition(array, start, last)

    # Divide the array into subarrays
    # Quick sort the left side of the arrray
    quick_sort(array, start, pIndex - 1)

    # Quick sort the right side of the array
    quick_sort(array, pIndex+1, last)
  end 

end

# This function will sort array with values larger than pivot on the right and vice versa
def partition(array, start, last)
  
  # Pivot value (pv) will be last item in array/subarray
  pv = array[last]

  pIndex = last
 
  # Swap will hold second pointer to swap values
  swap_index = start - 1

  # Iterate over the array 
  for current_index in (start .. last)
    # Current array value is less than pivot value
    if array[current_index] <= pv
      # Create pointer and set it to the previously encounter larger element index (element that is greater than pivot value)
      swap_index += 1

      # If current index of smaller elemnt is greater than index of larger element, swap thier places.
      if current_index > swap_index
        swap(array, current_index, swap_index)

        # If we are at the end of array
        if current_index == last
          # The pivot index is now the swap index, return result 
          return pIndex = swap_index
        end 
      end 
    end

    # If we are at end of the array and a swap did not take place
    if current_index == last
      # The pivot index has not changed. Return pivot index.
      return pIndex
    end 
  end  
end 

# This function will swap the position of two values in an array
def swap(array, index_1, index_2)
  temp = array[index_1]
  array[index_1] = array[index_2]
  array[index_2] = temp
end