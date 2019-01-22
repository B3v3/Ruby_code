require "snail_sort"

describe ".snail_sort" do
  it "should raise an error when invalid matrix" do
    expect{ [1, 2, 3].snail_sort}.to raise_error(RuntimeError, "INVALID MATRIX")
  end

  it "should snail sort square matrix" do
    expect([[1,2,3],
            [4,5,6],
            [7,8,9]].snail_sort).to eq([1,2,3,6,9,8,7,4,5])
  end
  it "should snail sort  rectangular matrix" do
    expect( [[1,2],
             [2,3],
             [4,5]].snail_sort).to eq([1,2,3,5,4,2])
  end
end

describe ".insides_empty?" do
  it "should return true if arrays in array are empty" do
    expect([[],[]].insides_empty?).to be_truthy
  end
  it "should return false if arrays in array aren't empty" do
    expect([[1],[2]].insides_empty?).to be_falsey
  end
end

describe ".is_valid_matrix?" do
  it "should return false when not a matrix" do
    expect([1, 2, 3].is_valid_matrix?).to be_falsey
  end

  it "should return false when invalid form" do
    expect([[1],
            [2,2],
            [3]].is_valid_matrix?).to be_falsey

  end
  it "should be truthy when matrix is valid" do
    expect([[1,1],
            [2,2],
            [3,3]].is_valid_matrix?).to be_truthy
  end
end
