def anagram(word, target)
  perm = word.chars.permutation.to_a # O(n^2!)
  
  all_perm = perm.map do |el| #O(n)
    el.join("") #O(n)
  end

  all_perm.include?(target) #O(n)
end