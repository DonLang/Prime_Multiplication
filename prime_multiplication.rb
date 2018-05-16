class PrimeMultiplication
  attr_reader :size

  def initialize(size)
    @size = size
  end

  def is_prime?(potential_prime, list)
    if potential_prime == 2
      return true
    elsif potential_prime % 2 == 0
      return false
    end
    #  sieve of e
    root = Math.sqrt(potential_prime).to_i
    counter = 0
    while list[counter] <= root
      if potential_prime % list[counter] == 0
        return false
      end
      counter += 1
    end
    return true
  end

  def list_of_primes
    list = [2]
    counter = 3
    while list.length < size
      is_prime?(counter, list) ? (list << counter ): nil
      counter += 2
    end
    list
  end

  def create_multipli_table_rows(primes)
    rows = []
    for x in primes do
      temp_arry = [x]
      for y in primes do
        temp_arry.push(x*y)
      end
      rows.push(temp_arry)
    end
    rows
  end

  def create_primes_table
    primes = list_of_primes
    rows = create_multipli_table_rows(primes)
    primes.unshift('Primes')
    t = Terminal::Table.new rows: rows, headings: primes
  end

end
