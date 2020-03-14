def sum(arr)
    arr_dup = arr.dup
    return 0 if arr.length == 0
    return arr[0] if arr.length == 1
    n = arr_dup.pop
    n + sum(arr_dup)
end

print sum((1..100).to_a)