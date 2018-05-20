require_relative '../prime_multiplication'

RSpec.describe PrimeMultiplication do
  size = 5
  let (:primes_table) {PrimeMultiplication.new(size)}

  describe "is_prime?" do
    it "returns true if a number is prime" do
      expect(primes_table.is_prime?(7, [2, 3, 5])).to eq(true)
    end
    it "returns false if a number is not prime" do
      expect(primes_table.is_prime?(9,[2, 3, 5, 7])).to eq(false)
    end
  end

  describe 'list_of_primes' do
    it 'returns a list of primes' do
      expect(primes_table.calculate_primes).to eq([2, 3, 5, 7, 11]);
    end
    it 'returns a list of primes of length equal to size' do
      expect(primes_table.calculate_primes.length).to eq(primes_table.size);

    end
  end

  describe 'create_multiple_table_rows' do
    it 'returns a nested array consisting of multiples of primes as strings' do
      row = 0
      expect(primes_table.get_table_rows([2, 3, 5, 7, 11])[row]).to eq(["2", "4", "6", "10", "14", "22"])
    end
  end

  describe 'create_primes_table' do
    let (:table) {primes_table.create_primes_table}
    it 'returns a string' do
      expect(table.class).to be(String)
    end
    it 'has the appropriate number of newlines' do
      expect(table.lines.count).to be(primes_table.size + 1)
    end
  end
end

