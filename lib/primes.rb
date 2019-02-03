
module PrimeCounter
  def primes(range)
   deleting_not_primes(range_without_evens(range))
  end

  def deleting_not_primes(numbers)
    complete = false
    i = 1
    until complete == true
      complete = true
      divider = numbers[i]
      numbers[(i+1)..-1].each do |number|
        if number % divider == 0
          complete = false
          numbers.delete(number)
        end
      end
      i += 1
    end
   numbers
  end

  def range_without_evens(range)
    (2..range).to_a.find_all{|i| i % 2 != 0 or i == 2}
  end

  def is_prime?(number)
     primes(number).include?(number)
  end

end

class ConsoleWriter
    include PrimeCounter

  def initialize
    puts "Write max of your range of numbers"
      range = gets.chomp.to_i
    puts "Do you want to see NUMBER or LIST of primes?"
      action = gets.chomp.downcase
    select_method(action, range)
  end

  def select_method(action, range)
    if action == "number"
      show_number_of_primes(range)
    elsif action == "list"
      show_list_of_primes(range)
    else
      puts "Bad command :("
    end
  end

  def show_number_of_primes(range)
    puts primes(range).count
  end

  def show_list_of_primes(range)
    puts primes(range).inspect
  end

  def show_time_of_function(range)
    time = Time.now
    primes(range)
    puts "#{Time.now - time}"
  end
end
