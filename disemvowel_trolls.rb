# Trolls are attacking your comment section!
# A common way to deal with this situation is to remove all of the vowels from the trolls comments,
# neutralizing the threat. Your task is to write a method that takes a string and return a new string with all the vowels removed

def disemvovel(string)
    vowels = /[aeiouAEIOU]/
    new_array = [];

    string.each_char do |letter|
        new_array << letter unless letter =~ vowels
    end

    new_array.join("")
end

# def disemvowel(text)
#     text.gsub(/[aeiou]/i,'')
#   end

puts disemvovel("This website is for losers LOL!")