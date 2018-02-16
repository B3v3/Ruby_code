def substrings(string, dictionary)
  @word_number = Hash.new(0)
  text = string.split(" ")
    dictionary.each do |d_word|
      text.each do |word|
        compare(word, d_word)
      end
  end
  puts @word_number
end

def compare(word, d_word)
  if word.downcase.include?(d_word)
      @word_number[d_word] += 1
    end
 end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("Howdy partner, sit down! How's it going?", dictionary)
