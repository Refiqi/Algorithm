# --- Directions
# Print out the n-th entry in the fibonacci series.
# The fibonacci series is an ordering of numbers where
# each number is the sum of the preceeding two.
# For example, the sequence
#  [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
# forms the first ten entries of the fibonacci series.
# Example:
#   fib(4) === 3

# Recursive Method

def fibonacci n
    return n if n < 2
    fibonacci(n - 1) + fibonacci(n - 2)
end

# Memoize Recursive Method

def memoize_fib n
    @cache = [0, 1]
    return @cache[n] if @cache[n]

    @cache[n] = memoize_fib(n - 1) + memoize_fib(n - 2)
end



# Iterate Method

# def fibonacci n
#     fib = (1..n).inject( [0, 1] ) { |fib| fib << fib.last(2).inject(:+)}
#     fib[n]
# end

puts memoize_fib(9)