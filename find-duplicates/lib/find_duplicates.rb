require 'benchmark'

a = 5000
b = 100000

def find_duplicates(words)
  seen = {}
  duplicates = {}
  words.each do |word|
    if seen[word]
      duplicates[word] = true unless duplicates[word]
    else
      seen[word] = true
    end
  end
  return duplicates.keys
end

def runtime(a, b)
  count = b / a
  for i in 1..count do
    size = a*i
    arr = ((1..size).to_a).shuffle
    results = []

    times = 100

    for i in 1..times do
      results << Benchmark.realtime { find_duplicates(arr) }
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
