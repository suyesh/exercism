class Squares
  def initialize(num)
    @num = num
    @numbers = (1..num).to_a
    @squared_sum = num.zero? ? 0 : @numbers.inject(:+) ** 2
    @all_num_squared_sum = num.zero? ? 0 : @numbers.map {|_num| _num ** 2}.inject(:+)
  end

  def square_of_sum
    @squared_sum
  end

  def sum_of_squares
    @all_num_squared_sum
  end

  def difference
    (@all_num_squared_sum - @squared_sum).abs
  end
end

module BookKeeping
  VERSION = 3
end
