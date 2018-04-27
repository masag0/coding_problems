def binary_search(arr, target)
  return -1 if arr.size < 1
  
  mid = arr.size/2
  left = arr[0...mid]
  right = arr[mid+1..-1]
  if arr[mid] == target
    return mid
  elsif target < arr[mid]
    return binary_search(left, target)
  else
    return binary_search(right, target) + mid + 1
  end

end


p binary_search([], 1)
p binary_search([1], 1)
p binary_search([1,2], 2)
p binary_search([1,2,3,4,5,6,7], 6)
p binary_search([1,2,3,4,5,6,7], 2)
p binary_search([1,2,3,4,5,6,7], 0)
