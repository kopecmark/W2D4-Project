

def two_sum_sort(arr, target)
  arr.each.with_index do |el, idx|
    search_target = target - el 
    return true if arr.index(search_target) && arr[idx] != search_target
  end
  false
end

arr = [0, 1, 5, 7]

p two_sum_sort(arr, 6)
p two_sum_sort(arr, 10)

def two_sum_hash_sort(arr, target)
  
  search_hash = Hash.new(0)
  arr.each {|num| search_hash[num]} #O(n)
  
  search_hash.keys == arr 
  
  
end