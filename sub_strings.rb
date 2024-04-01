def substrings(string, array)
  words_array = string.downcase.split
  matching = words_array.map do |word| 
    array.map { |dictionary_word| word[dictionary_word]}
    .select { |word| word != nil}
  end
  .flatten
  matching.reduce(Hash.new(0)) do |result, times|
    result[times] += 1
    result
  end
end


# test cases
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
# ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
p substrings("below", dictionary)

# { "below" => 1, "low" => 1 }
p substrings("Howdy partner, sit down! How's it going?", dictionary)
# { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
