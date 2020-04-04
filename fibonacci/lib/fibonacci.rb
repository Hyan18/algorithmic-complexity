module Fibonacci

  def self.values(n)
    return [] if n == 0
    return [0] if n == 1
    return [0, 1] if n == 2

    output = [0, 1]
    for i in 1..(n-2) do
      output << output[-1] + output[-2]
    end
    return output
  end

end