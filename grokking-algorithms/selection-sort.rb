def selection_sort(arr)
  new_arr = []
  for i in 1..(arr.length)
    smallest = find_smallest(arr)
    new_arr.push(arr.delete_at(smallest))
  end
  new_arr
end

def find_smallest(arr)
  smallest = arr[0]
  smallest_index = 0
  for i in 1...(arr.length)
    if arr[i] < smallest
      smallest = arr[i]
      smallest_index = i
    end
  end
  smallest_index
end

print selection_sort((1..10).to_a.shuffle)