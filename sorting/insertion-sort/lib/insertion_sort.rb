module InsertionSort

  def self.run(array)
    a = array.dup
    i = 1
    while i < array.length
      j = i - 1
      while  (a[j+1] < a[j]) && (j >= 0)
        a[j+1], a[j] = a[j], a[j+1]
        j -= 1
      end
      i += 1
    end
    return a
  end

end

require './runtime.rb'

runtime(InsertionSort)
