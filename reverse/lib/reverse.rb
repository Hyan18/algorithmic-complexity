require 'benchmark'

a = 50000
b = 1000000

def pop_push_reverse(array)
  arr = array.dup
  new_arr = []
  for i in 1..(array.length)
    new_arr << arr.pop
  end
  new_arr
end

def reverse(array)
  arr = array.dup
  len = array.length
  for i in 0...(len/2)
    arr[i], arr[len-i-1] = arr[len-i-1], arr[i]
  end
  arr
end

def runtime(a, b)
  count = b / a
  for i in 1..count do
    size = a*i
    arr = ((1..size).to_a).shuffle
    results = []

    times = 100

    for i in 1..times do
      results << Benchmark.realtime { reverse(arr) }
    end
    out = times*0.05

    results.sort!
    results.shift(out)
    results.pop(out)
    time = (results.inject(:+)/results.length) * (10**9)
    puts "#{size} #{time}"
  end
end

runtime(a,b)