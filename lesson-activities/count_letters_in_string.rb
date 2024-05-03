# Count letters in string
# In this challenge, youve to count lowercase letters in a given string and return the letter
# count in a hash with "letter" as key and count as "value". The key must be "symbol" instead of string.

def count_letters_in_string(str)
    hash = Hash.new(0)
    str.each_char {|letter| hash[letter.to_sym] += 1}
    hash
end

p count_letters_in_string("hello")
p count_letters_in_string("world")
p count_letters_in_string("abbcccddedd")