# searches sequentially over each element and returns the one that matches a particular item.

# Algorithm

# Linear Search ( Array A, Value x)

# Step 1: Set i to 1
# Step 2: if i > n then go to step 7
# Step 3: if A[i] = x then go to step 6
# Step 4: Set i to i + 1
# Step 5: Go to Step 2
# Step 6: Print Element x Found at index i and go to step 8
# Step 7: Print element not found
# Step 8: Exit

def linear_search(arr, item)
    for element in arr
        if element == item
            return "#{item} is at index #{arr.index(item)}"
        end
    end
end

arr = [7, 6, 25, 19, 8, 14, 3, 16, 2, 0]
item = 3
p linear_search(arr, item)

def linear_searchw(array, key)
    if array.index(key).nil?
      return -1
    else
      return "#{key} at index #{array.index(key)}"
    end
 end
  
  
arr = [7, 6, 25, 19, 8, 14, 3, 16, 2, 0]
key = 3
p linear_searchw(arr, key)

def linear_search_select(array, key)
    if array.index(key).nil?
      return -1
    else
        return "#{key} at index #{array.index(key)}" if arr.select {|value| value == key }
    end
 end
  
  
arr = [7, 6, 25, 19, 8, 14, 3, 16, 2, 0]
key = 3
p linear_searchw(arr, key)


def linear_search_while(array, key)
    i = 0
    while i < array.length
        if array[i] == key
          return "#{key} at index #{array.index(key)}"
        end
        i+=1
      end
      return -1
  end
  
  arr = [7, 6, 25, 19, 8, 14, 3, 16, 2, 0]
  key = 3
  p linear_search(arr, key)

  def linear_search_range(array, key)
    for item in array[0]..array[-1]
        if array[item] == key 
            return "#{key} at index #{array.index(key)}"
        end
        item+=1
    end
  end
  
  arr = [7, 6, 25, 19, 8, 14, 3, 16, 2, 0]
  key = 3
  p linear_search(arr, key)
