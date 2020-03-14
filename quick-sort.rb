def quick_sort(arr)
  return arr if arr.length < 2
  pivot = arr[0]
  lower = []
  upper = []
  arr[1..].each { |n|
    if n < pivot
      lower.append(n)
    else
      upper.append(n)
    end
  }
  quick_sort(lower) + [pivot] + quick_sort(upper)
end
