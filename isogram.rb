def is_isogram(string)
    string.downcase.split('').each_with_index do |letter, index|
       return false if string.downcase[index + 1..].include?(letter)  
    # puts string.downcase[index + 1..]
    end
    true
end


# def is_isogram(string)
#     array = string.downcase.split('')
#     index = 0

#     while index < string.length - 1
#         (index + 1...array.length).each do |next_index|
#             return false if array[index] == array[next_index] 
#             # puts "#{array[index]} and #{array[next_index]}"
#         end
#     index += 1
#     end
#     true
# end  


# def is_isogram(string)
#     array = string.downcase.split('')

#     for i in 0..array.length - 1
#         for j in (i + 1)..array.length - 1
#             return false if array[i] == array[j]
#             # puts "#{array[i]} and #{array[j]}"
#         end
#     end
#     true
# end



puts is_isogram('Dermatoglyphics')
puts is_isogram("aba")
puts is_isogram("moOse")
puts is_isogram("abcd")
