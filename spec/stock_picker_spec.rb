require 'stock_picker'

describe "StockPicker" do
  describe ".stock_picker" do
    context "giving the possible best income" do
        it "returns the best days to buy and sell and income generated" do
        expect(StockPicker.stock_picker([17,3,6,9,15,8,6,1,10])). to eql("[2 - buying day, 5 - selling day] 12  - income")
      end
    end
  end
end
