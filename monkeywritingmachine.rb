def monkeywritingmachine
  letters = ('a'..'z').to_a
  #positions in array for randomized letters 
  aone = rand(27)
  bone = rand(27)
  cone = rand(27)
  done = rand(27)
  #letters of randomized word
first = letters[aone]
second = letters[bone]
third = letters[cone]
fourth = letters[done]
@word = first.to_s + second.to_s + third.to_s + fourth.to_s
end

def testingmachine(word)
number_of_times = 0
until @word == word.downcase
  number_of_times += 1
 monkeywritingmachine
end
puts "Monkey used writing machine #{number_of_times} times, to write #{@word}"
end

puts "what monkeys must write?"
your_word = gets.chomp
testingmachine(your_word)
