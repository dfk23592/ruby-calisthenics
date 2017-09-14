module FunWithStrings
  def palindrome?
    self.downcase.gsub(/[^a-z]/, '') == self.downcase.gsub(/[^a-z]/, '').reverse
  end

  def count_words
    counter = Hash.new(0)
    words = self.downcase.scan(/\w+/)
    words.each { |word| counter[word] += 1 }
    counter
  end

  def anagram_groups
    words = self.scan(/\w+/)
    words.group_by { |word| word.downcase.chars.sort }.values
  end

end

# make all the above functions available as instance methods on Strings:

class String
  include FunWithStrings
end
