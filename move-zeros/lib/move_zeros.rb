module MoveZeros
  def self.run(array)
    # In-place without making a copy of the array
    i = 0
    while i < array.length - 1
      if array[i] == 0
        j = 1
        while array[i+j] == 0 && (i+j < array.length - 1)
          j += 1
        end
        array[i], array[i+j] = array[i+j], array[i] if array[i+j] != 0 
      end
      i += 1
    end
  end

  # Alternative method

  def self.alt(nums)
    i = 0
    nums.each do |n|
        if n != 0
            nums[i] = n
            i += 1
        end
    end
    (i...nums.size).each {|indx| nums[indx] = 0}
    return nums
  end

end

require 'benchmark'

a = 50
b = 1000

count = b / a
for i in 1..count do
  size = a*i
  x = rand(size)
  arr = Array.new(x, 0) + (1..(size - x)).to_a
  arr.shuffle!
  results = []

  times = 100

  for i in 1..times do
    results << Benchmark.realtime { MoveZeros.alt(arr) }
  end
  out = times*0.05

  results.sort!
  results.shift(out)
  results.pop(out)
  time = (results.inject(:+)/results.length) * (10**9)
  puts "#{size} #{time}"
end
