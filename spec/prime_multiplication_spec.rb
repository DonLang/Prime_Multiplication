require_relative '../prime_multiplication'

RSpec.describe PrimeMultiplication do
  let (:primes_table) {PrimeMultiplication.new(5 )}

  describe "is_prime?" do
    it "returns true if a number is prime" do
      expect(primes_table.is_prime?(7, [2, 3])).to eq(true)
    end
    it "returns false if a number is not prime" do
      expect(primes_table.is_prime?(9,[2, 3])).to eq(false)
    end
  end

  describe 'list_of_primes' do
    it 'returns a list of primes of length equal to size' do
      expect(primes_table.list_of_primes).to eq([2, 3, 5, 7, 11])
    end
  end
end