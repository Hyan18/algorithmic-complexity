require 'benchmark'

a = 50000
b = 1000000
count = b / a

for i in 1..count do
  size = a*i
  arr = ((1..size).to_a).shuffle
  results = []

  times = 100

  for i in 1..times do
    results << Benchmark.realtime { arr.reverse }
  end
  out = times*0.05

  results.sort!
  results.shift(out)
  results.pop(out)
  time = (results.inject(:+)/results.length) * (10**9)
  puts "#{size} #{time}"
end
