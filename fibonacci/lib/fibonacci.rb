module Fibonacci

  def self.values(n)
    return [] if n == 0
    return [0] if n == 1
    return [0, 1] if n == 2

    output = [0, 1]
    for i in 1..(n-2) do
      output << output[-1] + output[-2]
    end
    return output
  end

end

require 'benchmark'

for i in 1..100 do
  results = []
  size = i*100

  times = 100

  for j in 1..times do
    results << Benchmark.realtime { Fibonacci.values(size) }
  end
  out = times*0.05

  results.sort!
  results.shift(out)
  results.pop(out)
  time = (results.inject(:+)/results.length) * (10**9)
  puts "#{size} #{time}"
end
