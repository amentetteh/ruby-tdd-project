class Solver
  def factorial(n)
    raise ArgumentError, 'number should be >=0' if n.negative?
    return 1 if n.zero?
    factorial(n-1) * n
  end
end