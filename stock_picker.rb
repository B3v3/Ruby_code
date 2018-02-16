
def stock_picker(array)
  income = 0
 array.each do |buy|
    array.each do |sell|
      if array.index(buy) < array.index(sell)
        if sell - buy > income
          income = sell - buy
          @buyp = buy
          @sellp = sell
        end
      end
 end
end
puts (array.index(@buyp) + 1).to_s + " - day of buying"
puts (array.index(@sellp) + 1).to_s + " - day of selling"
puts income.to_s + " - income"
end
stock_picker([17,3,6,9,15,8,6,1,10])
