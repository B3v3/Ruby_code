class Anagramus

  def initialize
    @anagram_base = Hash.new([])
  end

  def check(word1, word2)
    @word1 = anagram(word1)
    @word2 = anagram(word2)
    if anagram?
      adding(word1, word2)
      adding(word2, word1)
      puts "#{word1} is anagram for #{word2}"
      puts "Another anagrams for #{word1} - #{@anagram_base[@word1].inspect}"
    else
    puts "Anagrams for #{word1} - " + @anagram_base[@word1].inspect
    end
  end

private
  def anagram?
    @word1 == @word2
  end

  def anagram(word)
    word.split("").sort
  end

  def including?(word)
    @anagram_base.include?(@word1)
  end

  def adding(word1, word2)
    if including?(@word1)
    unless @anagram_base[@word1].include?(word2)
      @anagram_base[@word1].push(word2)
    end
    else
      @anagram_base[@word1] = [word1, word2]
   end
 end
end
