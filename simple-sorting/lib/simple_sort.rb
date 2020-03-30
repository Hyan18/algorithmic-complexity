module SimpleSort
  def self.run(array)
    one_count = 0
    array.each do |n|
      one_count += 1 if n == 1
    end
    zero_count = array.length - one_count
    Array.new(zero_count, 0) + Array.new(one_count, 1)
  end
end