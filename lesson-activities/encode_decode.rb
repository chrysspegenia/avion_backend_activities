vowel = [a:"1",e:"2",i:"3",o:"4",u:"5"]

# def encode(str)
#     str.gsub("1", "a").gsub("2", "e").gsub("3", "i").gsub("4", "o").gsub("5", "u")
# end

# def decode(str)
#     str.gsub("a", "1").gsub("e", "2").gsub("i", "3").gsub("o", "4").gsub("u", "5")
# end

def encode(str)
    str.tr("aeiou", "12345")
end

def decode(str)
    str.tr("12345", "aeiou")
end

puts encode("hello") # h2ll4

puts decode("h3 th2r2") #  hi there