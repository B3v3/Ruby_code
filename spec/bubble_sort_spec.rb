require 'bubble_sort'

describe BubbleSort do
  describe ".bubble_sort" do
    context "sorting array of numbers" do
      it "returns sorted array" do
        expect(BubbleSort.bubble_sort([1, 2, 4, 3, 1, 2])).to eql([1,1,2,2,3,4])
        expect(BubbleSort.bubble_sort([4,3,78,2,0,2])).to eql([0,2,2,3,4,78])
      end
    end
    context "sorting array of words" do
      it "returns sorted array" do
        expect(BubbleSort.bubble_sort(["z", "a", "b", "a"])).to eql(["a", "a", "b", "z"])
      end
    end
  end
end
