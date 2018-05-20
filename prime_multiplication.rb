class PrimeMultiplication
  attr_reader :size

  def initialize(size)
    @size = size
  end

  def create_primes_table
    primes = calculate_primes
    rows = get_table_rows(primes)
    # Add a space to the top row
    rows.unshift(primes.unshift(" ").map{|x| x.to_s})
    # Figure out the width of each column
    rows_width= rows.last.collect{|x| x.length}
    # Flip the columns and rows
    rows_t = rows.transpose
    new_rows = []
    # Adjust spacing of columns
    rows_t.each_with_index{|x,i| new_rows[i] = x.collect{|r| r.rjust(rows_width[i] +1) + " "}}
    # Flip the rows and columns back
    rows = new_rows.transpose
    # Add separators between columns and new lines between rows
    table = rows.collect{|l| l.join("|")}.join("|\n")
    # Underline and make cyan
    "\e[4m\e[36m#{table}|\e[0m"
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
      temp_arry = [column.to_s]
      primes.each do |row|
        temp_arry.push((column * row).to_s)
      end
      rows.push(temp_arry)
    end
    rows
  end
end
