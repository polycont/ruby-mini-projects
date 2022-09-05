def caesar_cipher(string, shift)
  alphabet = ('a'..'z').to_a
  new_string = []
  string = string.split('').each { |letter| 
    if alphabet.include?(letter.downcase) == false
      new_string << letter
    elsif letter == letter.upcase
      letter = letter.downcase
      index = alphabet.index(letter)
      index = (index + shift) % 26
      index = alphabet[index]
      new_string << index.upcase
    else
      letter = letter.downcase
      index = alphabet.index(letter)
      index = (index + shift) % 26
      index = alphabet[index]
      new_string << index
    end
  }
  new_string = new_string.join('')
end
p caesar_cipher("Testing, TeStInG, 1, 5, >, ... ???", 2)