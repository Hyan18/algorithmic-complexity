module QuickSort

  def self.run(array, pivot = "random")
    a = array.dup
    return a if a.length < 2

    pivot == "random" ? r = rand(a.length) : r = 0
    pivot = a[r]
    lower = []
    upper = []
    (a[...r] + a[(r+1)..]).each { |n|
      if n < pivot
        lower.append(n)
      else
        upper.append(n)
      end
    }
    run(lower) + [pivot] + run(upper)
  end

end

require './runtime.rb'

runtime(QuickSort)
