def recursive_fib (n)
  if n < 2
    return n
  else
    return recursive_fib(n-1) + recursive_fib(n-2)
  end
end

puts recursive_fib (10)

def iterative_fib(n)
  previous = 0
  current = 1
  n.times do
    sum = current
    current = current + previous
    previous = sum
  end
  return previous
end

puts iterative_fib (10)


require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
