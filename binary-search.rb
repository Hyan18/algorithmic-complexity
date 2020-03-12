require 'benchmark'

a = 500000
b = 10000000
count = b / a

def binary_search(list, item)
  low = 0
  high = list.length - 1

  while low <= high do
    mid = (low + high) / 2
    guess = list[mid]

    if guess == item
      return mid
    elsif guess < item
      low = mid + 1
    elsif guess > item
      high = mid - 1
    end
  end
  return nil
end

for i in 1..count do
  size = a*i
  arr = ((1..size).to_a).shuffle
  results = []

  times = 100

  for i in 1..times do
    results << Benchmark.realtime { binary_search(arr, rand(size)) }
  end
  out = times*0.05

  results.sort!
  results.shift(out)
  results.pop(out)
  time = (results.inject(:+)/results.length) * (10**9)
  puts "#{size} #{time}"
end