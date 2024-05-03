# Reverse every other work in the string

# Reverse every other word in a given string, then return the string. 
# Throw away any leading or trailing whitespace, while ensuring there is exactly on space between each word.
# Punctuations marks should be treated as if they are a part of the word in this challenge

def reverse_alternate(string)
    new_string = string.split.each_with_index.map do |word, i|
        reversed = ""
        (0...word.length).each {|j| reversed << word[word.length - j - 1]}

        # use odd since the position of even words are odd in index, 0-based
        i.odd? ? reversed : word
    end
    new_string.join(" ")
end

p reverse_alternate("reverse every word")
p reverse_alternate("Throw any leading or trailing whitespace")
p reverse_alternate("Punctuations marks should be treated also!")
p reverse_alternate("")