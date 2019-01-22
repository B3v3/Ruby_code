class StockPicker
  def self.stock_picker(array)
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
  return "[#{(array.index(@buyp) + 1).to_s} - buying day, #{(array.index(@sellp) + 1).to_s} - selling day] #{income.to_s}  - income"
  end
end
