class LongestPalindrome

  def initialize(s)
    @palindrome_longest = ""
    @word = s.downcase.gsub(" ", "").split("")
    @index = 0
  end

  def palindrome_reset
    @palindrome = ''
    @i = 1
  end

  def adding_letters_to_palindrome
    while palindrome?
        palindrome_length_test
            if (@index - @i) >= 0 && !@word[@index + @i + @j].nil?
              @palindrome = @word[@index - @i] + @palindrome + @word[@index + @i + @j]
            else
              break
            end
        @i += 1
      end
  end

  def palindrome_length_test
    if @palindrome.length > @palindrome_longest.length
      @palindrome_longest = @palindrome
    end
  end

  def palindrome_base_letter
    @palindrome = @word[@index]
    @j = 0

    if (@palindrome + @word[@index + 1]).reverse == (@palindrome + @word[@index + 1])
    @palindrome += @word[@index + 1]
    @j = 1
    end
  end

  def palindrome?
     @palindrome.reverse == @palindrome
   end

 def longest_palindrome
     palindrome_reset #set palindrom to base status
          while @index != (@word.count)
            unless @word[@index + @i].nil?
              palindrome_base_letter

                  adding_letters_to_palindrome

            palindrome_reset #set palindrom to base status
            end
        palindrome_reset #set palindrom to base status
        @index += 1
      end
puts @palindrome_longest
end
end
