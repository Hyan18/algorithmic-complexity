module SubSequenceSum
  def self.exists?(array, target)
    current_index = 0
    k = 0
    sum = 0
    while current_index < array.length
      while (sum < target) && (current_index + k < array.length)
        sum += array[current_index + k]
        k += 1
      end
      return true if sum == target
      current_index += 1
      sum = 0
      k = 0
    end
    return false
  end
end
