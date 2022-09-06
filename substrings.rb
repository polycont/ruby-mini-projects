dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(words, dictionary)
  word_hash = {}
  words = words.downcase.split(' ')
  words.each do |word|
    dictionary.each do |dict|
      if word.include?(dict) # If word includes dict
        if word_hash[dict] == nil # If dict doesn't already exist in hash...
          word_hash[dict] = 1 # Add word to hash with value of 1
        else
          word_hash[dict] += 1 # Increment dict's value ncrement value
        end
      end
    end
  end
  return word_hash
end

p substrings("Howdy partner, sit down! How is it going?", dictionary)