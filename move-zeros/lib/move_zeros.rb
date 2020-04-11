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
end
