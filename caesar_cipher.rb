# The idea here is split the string, convert in bites
# use regex to check if its alphabetical character
# convert and transform and string again

def caesar_cipher(string, steps=1)
  convert_string = string.split('').map do |char|
    if char.match?(/[a-zA-Z]/)
      char = char.ord
      if char.between?(65,90)
        char + steps > 90 ? (char + steps - 26).chr : (char + steps).chr
      elsif char.between?(97,122)
        char + steps > 122 ? (char + steps - 26).chr  : (char + steps).chr
      end
    else
      char
    end
  end
  convert_string.join
end

p caesar_cipher("What a string!",5)
