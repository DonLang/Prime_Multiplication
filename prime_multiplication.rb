require 'terminal-table'

class PrimeMultiplication
  attr_reader :size

  def initialize(size)
    @size = size
  end

  def create_primes_table
    primes = calculate_primes
    rows = get_table_rows(primes)
    primes.unshift('')
    Terminal::Table.new rows: rows, headings: primes, title: 'Prime Multiplication'
  end

  def calculate_primes
    primes = [2]
    counter = 3
    while primes.length < @size
      is_prime?(counter, primes) ? (primes << counter): nil
      counter += 2
    end
    primes
  end

  def is_prime?(num, primes)
    if num == 2
      return true
    elsif num % 2 == 0
      return false
    end

    # sieve of Eratosthenes
    square_root = Math.sqrt(num).to_i
    for prime in primes
      if prime > square_root
        return true
      elsif num % prime == 0
        return false
      end
    end
  end

  def get_table_rows(primes)
    rows = []
    primes.each do |column|
      temp_arry = [column]
      primes.each do |row|
        temp_arry.push(column * row)
      end
      rows.push(temp_arry)
    end
    rows
  end
end
