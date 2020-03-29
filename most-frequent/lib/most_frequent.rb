require '../runtime.rb'

module MostFrequent

  def self.run(words)
    counts = Hash.new(0)
    words.each do |word|
      counts[word] += 1
    end

    return [] if counts.keys.length < 1

    return counts.keys if counts.keys.length == 1

    most_common = 0
    most_common_word = nil
    second_most_common = 0
    second_most_common_word = nil
    counts.each do |word, count|
      if count > most_common
        second_most_common = most_common
        second_most_common_word = most_common_word
        most_common = count
        most_common_word = word
      elsif count > second_most_common
        second_most_common = count
        second_most_common_word = word
      end
    end

    return [most_common_word, second_most_common_word]
  end

end

runtime(MostFrequent)