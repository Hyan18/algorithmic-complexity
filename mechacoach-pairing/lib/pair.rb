module Pair
  def self.run(names)
    pairs = names.length / 2
    pairings = []
    seen_pairs = {}
    for i in 1...(names.length)
      seen_name = {}
      day_pairs = []
      for j in 1..pairs
        pair = []

        names.each do |name|
          unless seen_name[name]
            seen_name[name] = true
            # Boolean to check if taking this pair forces last pair to be one already seen
            last_pair_seen = j == (pairs - 1) && seen_pairs[(names - seen_name.keys)]
            pair << name
            if seen_pairs[pair] || last_pair_seen
              seen_name.delete(name)
              pair.pop
            end
            break if pair.length == 2
          end
        end

        day_pairs << pair
        seen_pairs[pair] = true
      end

      pairings << day_pairs
    end
    return pairings
  end
end