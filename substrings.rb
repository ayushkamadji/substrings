def substrings(text, dictionary=["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low", "own", "part", "partner", "sit"])
  result = {}
  dictionary.each do |word|
      result[word] = text.downcase.scan(Regexp.compile(word)).length if (text.downcase.include?(word))
  end
  return result
end

p substrings("Howdy partner, sit down! How's it going?")
