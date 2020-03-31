module SelectionSort

  def self.run(array)
    a = array.dup
    i = 0
    while i < array.length
      min = { :number => a[i], :index => i }
      for j in i...(array.length) do
        if a[j] < min[:number]
          min[:number] = a[j]
          min[:index] = j
        end
      end
      a[i], a[min[:index]] = a[min[:index]], a[i]
      i += 1
    end
    return a
  end

end
