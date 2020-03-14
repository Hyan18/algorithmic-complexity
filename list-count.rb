def list_count(arr)
  arr_dup = arr.dup
  return 0 if arr.empty?
  arr_dup.pop
  1 + list_count(arr_dup)
end

puts list_count((1..100).to_a)