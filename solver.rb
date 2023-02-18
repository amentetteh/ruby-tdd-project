# frozen_string_literal: true

# solver.rb
class Solver
  def factorial(number)
    raise ArgumentError, 'number should be >=0' if number.negative?
    return 1 if number.zero?

    factorial(number - 1) * number
  end

  def reverse(str)
    str.reverse
  end

  def fizzbuzz(number)
    return 'fizzbuzz' if (number % 5).zero? && (number % 3).zero?
    return 'fizz' if (number % 3).zero?
    return 'buzz' if (number % 5).zero?
  end
end
