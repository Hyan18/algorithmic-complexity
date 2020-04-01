module BubbleSort

  def self.run(array)
    a = array.dup
    to_sort = array.length - 1
    while to_sort > 0
      for i in 0...(to_sort) do
        if a[i] > a[i+1]
          a[i], a[i+1] = a[i+1], a[i]
        end
      end
      to_sort -= 1
    end
    return a
  end

end
