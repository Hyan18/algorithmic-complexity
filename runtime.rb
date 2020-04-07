require 'benchmark'

def runtime(algorithm, a = 500, b = 10000)
  count = b / a
  for i in 1..count do
    size = a*i
    arr = ((1..size).to_a).shuffle
    results = []

    times = 100

    for i in 1..times do
      results << Benchmark.realtime { algorithm.run(arr) }
    end
    out = times*0.05

    results.sort!
    results.shift(out)
    results.pop(out)
    time = (results.inject(:+)/results.length) * (10**9)
    puts "#{size} #{time}"
  end
end
