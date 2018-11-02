require 'byebug'

def first_anagram(word, target)
  perm = word.chars.permutation.to_a # O(n!)
  
  all_perm = perm.map do |el| #O(n!)
    el.join("") #O(n)     
  end
  
  # element that is n! long... so the big-O should be a O(n!)

  all_perm.include?(target) #O(n)
end




def second_anagram?(str, target)
  
  # debugger
  
  target = target.chars # is this O(n); what is the underlying mechanism for the chars method in Ruby
  
  str.chars.each do |ch| #n
    ch_index = target.index(ch) #n
    return false if ch_index.nil? #1
    target.delete_at(ch_index) #1
  end
  
  true
end #Big O of n^2



def third_anagram?(str, target)
  
  str.chars.sort == target.chars.sort
  
  
end


# p third_anagram?("mark", "arkm")
# p third_anagram?("mark", "aaaa")

def fourth_anagram?(str, target)
  
  str_hash = Hash.new(0) #O(1)
  target_hash = Hash.new(0) #O(1)
  
  str.chars.each do |ch| #O(n)
    str_hash[ch] += 1
  end
  
  target.chars.each do |ch| #O(n)
    target_hash[ch] += 1
  end
  
  target_hash == str_hash #O(1)
  
end

p fourth_anagram?("mark", "arkm")
p fourth_anagram?("mark", "aaaa")




