# Dynammic programming is useful when you're trying
# to optimise something given a constraint
# The problem is to be broken into discrete subproblems
# that do not depend on each other

def longest_common_substring(string_1,string_2)
  cell = []
  for i in 1..(string_1.length)
    cell << Array.new(string_2.length, 0)
  end
  for i in 0...(string_1.length)
    for j in 0...(string_2.length)
      if string_1[i] == string_2[j]
        if (i == 0 || j == 0)
          cell[i][j] = 1
        else
          cell[i][j] = cell[i-1][j-1] + 1
        end
      end
    end
  end
  return cell[-1][-1]
end

puts longest_common_substring("fish", "hish")

def longest_common_subsequence(string_1,string_2)
  cell = []
  for i in 1..(string_1.length)
    cell << Array.new(string_2.length, 0)
  end
  for i in 0...(string_1.length)
    for j in 0...(string_2.length)
      if string_1[i] == string_2[j]
        if (i == 0 || j == 0)
          cell[i][j] = 1
        else
          cell[i][j] = cell[i-1][j-1] + 1
        end
      else
        if i == 0
          top = 0
        else
          top = cell[i-1][j]
        end
        if j == 9
          left = 0
        else
          left = cell[i][j-1]
        end
        cell[i][j] = [top, left].max
      end
    end
  end
  return cell.max.max
end

puts longest_common_subsequence("fish", "fosh")
