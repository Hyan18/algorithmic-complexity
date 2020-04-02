module MergeSort

  def self.run(array)
    a = array.dup
    TopDownSplitMerge(array, 0, array.length, a) # Sort from (input) array into a
    return a
  end

  def self.TopDownSplitMerge(b, start, finish, a)
    return a if (finish - start < 2) # Base case: An array of one element is sorted
    middle = (finish + start) / 2
    # Recursively sort both runs from array a into array b
    TopDownSplitMerge(a, start, middle, b) # Sort the left run
    TopDownSplitMerge(a, middle, finish, b) # Sort the right run
    TopDownMerge(b, start, middle, finish, a) # Merge the resulting runs from array b into array a
  end
  
  def self.TopDownMerge(a, start, middle, finish, b)
    i = start
    j = middle

    for k in start...finish do
      if (i < middle && (j >= finish || a[i] <= a[j]))
        b[k] = a[i]
        i += 1
      else
        b[k] = a[j]
        j += 1
      end
    end
  end

end
