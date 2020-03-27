require 'benchmark'

a = 50000
b = 100000
count = b / a

def first_quick_sort(arr)
  return arr if arr.length < 2
  r = 0
  pivot = arr[r]
  lower = []
  upper = []
  (arr[...r] + arr[(r+1)..]).each { |n|
    if n < pivot
      lower.append(n)
    else
      upper.append(n)
    end
  }
  first_quick_sort(lower) + [pivot] + first_quick_sort(upper)
end

def quick_sort(arr)
  return arr if arr.length < 2
  r = rand(arr.length)
  pivot = arr[r]
  lower = []
  upper = []
  (arr[...r] + arr[(r+1)..]).each { |n|
    if n < pivot
      lower.append(n)
    else
      upper.append(n)
    end
  }
  quick_sort(lower) + [pivot] + quick_sort(upper)
end


for i in 1..count do
  size = a*i
  arr = ((1..size).to_a).shuffle
  results = []

  times = 20

  for i in 1..times do
    results << Benchmark.realtime { quick_sort(arr) }
  end
  out = times*0.05

  results.sort!
  results.shift(out)
  results.pop(out)
  time = (results.inject(:+)/results.length) * (10**9)
  puts "#{size} #{time}"
end

