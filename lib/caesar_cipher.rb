class CaesarCipher

def self.caesar_cipher(string, number)
  text = String.new
  letters = string.split("")
  uppercase = ("A".."Z").to_a
  downcase = ("a".."z").to_a
  letters.each do |letter|
    if uppercase.include?(letter)
      number.to_i.times do
        if letter == "Z"
          letter = "A"
        else
      letter_index = (uppercase.index(letter) + 1).to_i
      letter = uppercase[letter_index]
    end
    end
      text = text + letter
    elsif downcase.include?(letter)
      number.to_i.times do
        if letter == "z"
          letter = "a"
        else
          letter_index = (downcase.index(letter) + 1).to_i
          letter = downcase[letter_index]
        end
    end
      text = text + letter
    else text = text + letter
    end

  end
 return text
 end
end 
