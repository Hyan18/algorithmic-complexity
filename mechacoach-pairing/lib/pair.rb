module Pair
  def self.run(names)
    return [[names]] if names.length == 2

    indices = (0...(names.length)).to_a
    pairing = []
    for i in 1...(names.length)
      day = []
      day << [names[0], names[i]]
      left = indices - [0, i]
      left.map! { |x| names[x] }
      day << left
      pairing << day
    end
    return pairing
  end
end