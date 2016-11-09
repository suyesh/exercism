class Sieve
  def initialize(number)
    @numbers = (2..number).to_a
    @prime_numbers = []
  end

  def primes
    while !@numbers.empty?
      prime = @numbers.shift
      @prime_numbers << prime
      @numbers.reject! {|_num| _num % prime == 0}
    end
    @prime_numbers
  end
end

module BookKeeping
  VERSION = 1
end
