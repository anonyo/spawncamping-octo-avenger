module FunWithStrings
  def palindrome?
    words = self.downcase[/([a-z]+)/] 
    words == words.reverse
  end
  
  # returning nil => x , {"plan"=>1, "a"=>3, "panama"=>1, nil=>1, "man"=>1, "canal"=>1} , for :   "A man, a plan, a canal -- Panama!".count_words

  def count_words
    counts = Hash.new 0
    words = self.downcase.split(" ")
    words.each {|word| counts[word[/([a-z]+)/]] += 1}
    counts.delete_if { |k, v| k == nil } # so that nil isn't returned as key
    counts
  end
  
  def anagram_groups
    array = self.split(" ")
    if array.length == 1 
      array
    else
      array.group_by { |element| element.downcase.chars.sort }.values
    end
  end
  
end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
