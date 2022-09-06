dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
  word_hash = {}
  words = words.downcase.split(/\W+/)
  words.each do |word|
    dictionary.each do |dict|
      if dict.match(word) != nil # count variable is globally incrementing
        if word_hash.key?(word) # If word is already in hash
          count = word_hash[word]
          word_hash[word] = count += 1 # Increment hash number
        else
          word_hash[word] = 1 # Add word to hash with value of 1
        end
      end
    end
  end
  return word_hash
end

p substrings("Howdy partner, sit down! How is it going?", dictionary)