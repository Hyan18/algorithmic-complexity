require 'benchmark'

a = 5000
b = 100000
count = b / a

def my_shuffle(array)
  arr = array.dup
  new_arr = []
  until arr.empty?
    i = rand(arr.length)
    new_arr << arr.delete_at(i)
  end
  return new_arr
end

for i in 1..count do
  size = a*i
  arr = ((1..size).to_a).shuffle
  results = []

  times = 100

  for i in 1..times do
    results << Benchmark.realtime { my_shuffle(arr) }
  end
  out = times*0.05

  results.sort!
  results.shift(out)
  results.pop(out)
  time = (results.inject(:+)/results.length) * (10**9)
  puts "#{size} #{time}"
end
