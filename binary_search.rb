# ruby's bsearch works on sorted items

#search function with a sorted array, size of the array, and value to find

Time Complexity = O(logn)

binary_search(array, n, x)
  # set the search space to the entire array
  index_start = 0
  index_end = n - 1
  # loop until we can't divide the array any further
   while index_start <= index_end
    # find the middle element in our search space
     middle = ( index_start + index_end ) / 2
     # 3 possible cases in searching
     # x matches the middle element
     if array[middle] == x
       return middle
    # x is less then middle element - > reduce search space / 2
     elsif x < array[middle]
      index_end = middle - 1
     else 
     # x is larger than middle element -> reduce search space / 2
       index_start = middle + 1
  # return not found if our loop is completed and we've found no matching element
  return -1 (not found)


def binary_search(a, n, x)
    index_start = 0
    # get index of the last item in an array
    index_end = n - 1
  
    while index_start <= index_end do
      index_middle = index_start + (index_end - index_start) / 2
      if a[index_middle] == x
        return index_middle
      elsif x < a[index_middle]
        index_end = index_middle - 1
      else
        index_start = index_middle + 1
      end
    end
    return "not found"
end
  
a = [11, 20, 43, 49, 65, 97]
puts binary_search(a, a.size, 43)

# using the bsearch method

found_item = a.bsearch { |element| 65 <=> element }
puts a.index(found_item)
