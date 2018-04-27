@word = ''
def monkeywritingmachine
    @word = @word + ('a'..'z').to_a.shuffle[0]
end

def testingmachine(your_word)
number_of_times = 0
@your_word = your_word
if @word != your_word.downcase
  number_of_times += 1
 monkeywritingmachine
end
puts "Monkey used writing machine #{number_of_times} times, to write #{@word}"
end

puts "what monkeys must write?"
word = gets.chomp
testingmachine(word)
