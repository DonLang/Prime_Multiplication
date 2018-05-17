require_relative 'prime_multiplication'

if ARGV.any?
  if ARGV.length > 1
    puts "Too many arguments. Enter only one positive integer"
  elsif %w[-h -help].include?(ARGV[0])
    puts "Usage: ruby runner.rb [size]"
    puts "\t\t -h, -help \t\t\t Shows this message"
  elsif ARGV[0].to_i <= 0
    puts "Please give a positive integer"
  elsif ARGV[0].to_i > 0
    table = PrimeMultiplication.new(ARGV[0].to_i)
    puts table.create_primes_table
  end
else
  table = PrimeMultiplication.new(10)
  puts table.create_primes_table
end
