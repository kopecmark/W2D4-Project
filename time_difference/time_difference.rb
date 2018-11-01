require 'benchmark'
require 'byebug'

def my_min(list)
  smallest = nil
    
  list.each do |num1|  #O(n)
    larger = false
    list.each do |num2|  #O(n)
      larger = true if num1 > num2 #O(1)
      # if num2 is greater than num1, then larger = true
    end
    smallest = num1 unless larger  #O(1)
    
  end
  smallest
end


def my_min_two(list)
  smallest = list[0]
  
  list.each do |num|  #O(n)
    smallest = num if smallest > num
  end
  
  smallest
end

def permutations(list)
  return [[]] if list.empty?
  # debugger
  
  first_num = list.shift
  prev_result = permutations(list)
  result = []
  prev_result.each do |arr|
      sub_result = arr << first_num
      result += [sub_result]
        
  end
  result 
end

def largest_contiguous_subsum1(array)
  subs = []

  array.each_index do |idx1|
    (idx1..array.length - 1).each do |idx2|
      subs << array[idx1..idx2]
    end
  end
  
end

arr = [1,2,3]
p permutations(arr)

# 
# # num1 = [5]
# num2 = []
# # result [[]]
# result [[], [5]]