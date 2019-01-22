
def monkeywritingmachine
    @word = @word + ('a'..'z').to_a.shuffle[0]
end

def testingmachine(your_word)
  number_of_times = 0
  @word = ''
  until @word == your_word.downcase
    number_of_times += 1
       if @word.length >= your_word.length
         @word = '' #reseting the word
       end
  monkeywritingmachine #adding another letter
  end
number_of_times /= your_word.length
return "Monkey used writing machine #{number_of_times} times, to write #{@word}"
end

puts "what monkeys must write?"
word = gets.chomp
puts testingmachine(word)
