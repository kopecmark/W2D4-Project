require 'byebug'

def first_anagram(word, target)
  perm = word.chars.permutation.to_a # O(n* n!)
  
  all_perm = perm.map do |el| #O(n)
    el.join("") 
  end

  all_perm.include?(target) #O(n)
end



def second_anagram?(str, target)
  
  # debugger
  
  target = target.chars # is this O(n); what is the underlying mechanism for the chars method in Ruby
  
  str.chars.each do |ch| #n or n^2
    ch_index = target.index(ch) #n
    return false if ch_index.nil? #1
    target.delete_at(ch_index) #1
  end
  
  true
end #Big O of n^2 or n^3



def third_anagram?(str, target)
  
  str.chars.sort == target.chars.sort
  
  
end


# p third_anagram?("mark", "arkm")
# p third_anagram?("mark", "aaaa")

def fourth_anagram?(str, target)
  
  str_hash = Hash.new(0)
  target_hash = Hash.new(0)
  
  str.chars.each do |ch|
    str_hash[ch] += 1
  end
  
  target.chars.each do |ch|
    target_hash[ch] += 1
  end
  
  target_hash == str_hash
  
end

p fourth_anagram?("mark", "arkm")
p fourth_anagram?("mark", "aaaa")
