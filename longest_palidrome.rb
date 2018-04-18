def longest_palindrome(s)

  palindrome = ""
  @palindrome = ""
  word = s.split("")
  index = 0
  i = 0

until i == word.count
  until index == word.count
        if not word[index + i].nil?
        palindrome += word[index + i]
        else
          break 
        end
    index += 1
        if palindrome.reverse == palindrome && palindrome.length > @palindrome.length
          @palindrome = palindrome
        end
  end
    index = 0
    palindrome = '' #reseting palindrome
    i += 1
  end
puts @palindrome
end
