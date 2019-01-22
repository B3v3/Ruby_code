require 'primes'

describe PrimeCounter do

  class TestClass
    include PrimeCounter
    def initialize(range)
      @range = range
    end

    def all_primes
      primes(@range)
    end
  end

  describe ".primes" do
    it 'returns valid number of primes' do
      expect(TestClass.new(10).all_primes.count).to eql(4)
      expect(TestClass.new(100).all_primes.count).to eql(25)
      expect(TestClass.new(1000).all_primes.count).to eql(168)
    end
    it 'returns a valid list of primes' do
      expect(TestClass.new(10).all_primes).to eql([2,3,5,7])
    end
  end
end
