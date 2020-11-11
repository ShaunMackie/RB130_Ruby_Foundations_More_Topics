=begin

#Problem

- the given list of names is encrypted using Rot13
- write a program that deciphers and prints each of the names on the list

#Input
a list of strings

#Output

a list of strings

#Examples

# Rules + Questions

- Rot13 is replacing each letter with the letter 13 letters ahead of it, wrapping around to the start if necessary

#Algorithm 
- write a program that deciphers Rot13 and prints each of the names on a given list

# Implementation Notes 
- create a hash where the keys are the letters of the alphabet and the values are the letters that are 13 spaces ahead of the keys
  - init a var and assign the alphabet to it
  - init a cipher variable and assign an empty hash
  - iterate over the alphabet constant, creating a key/value pair where the current letter is the key and the letter + 13 spaces is the value
- iterate over each given string and, using each character as a key, replace the char with it's corresponding value
  - init a results var and point to an empty string
- return the collection of deciphered strings

=end

require 'pry'
def decipher_key
  alphabet = ('a'..'z').to_a
  alphabet_caps = ('A'..'Z').to_a
  cipher = {}

  alphabet.each_with_index do |char, idx|
    if idx < 13
    cipher[char] = alphabet[idx + 13]
    else 
      cipher[char] = alphabet[idx - 13]
    end
  end

  alphabet_caps.each_with_index do |char, idx|
    if idx < 13
    cipher[char] = alphabet_caps[idx + 13]
    else 
      cipher[char] = alphabet_caps[idx - 13]
    end
  end

  cipher
end

def decipher(array)
  results = ''
  array.each do |word|
  word.chars.each do |char|
    #binding.pry
   if char == " " || char == "-" || char == ","
    results << char
   elsif char == ""
   else
    results << decipher_key[char]
   end
  end
end

  p results
end



array = ["Nqn Ybirynpr, ", "Tenpr Ubccre, ", "Nqryr Tbyqfgvar, ", "Nyna Ghevat, ", "Puneyrf Onoontr, ", "Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv, ", "Wbua Ngnanfbss, ", "Ybvf Unvog, ", "Pynhqr Funaaba, ", "Fgrir Wbof, ", "Ovyy Tngrf, ", "Gvz Orearef-Yrr, ", "Fgrir Jbmavnx, ", "Xbaenq Mhfr, ", "Fve Nagbal Ubner, ", "Zneiva Zvafxl, ", "Lhxvuveb Zngfhzbgb, ", "Unllvz Fybavzfxv, ", "Tregehqr Oynapu, "]

decipher(array)

#it wasn't clear whether we were to feed the method one name at a time or all the names at once, so I manually manipulated the input to work with my solution
# not optimal but works; instructions weren't clear
#works fine with one name at a time