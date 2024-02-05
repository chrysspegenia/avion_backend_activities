def unique_in_order(param)
    input_array = param.is_a?(String) ? param.split('') : param

    new_array = []

    input_array.each do |item|
        new_array.push(item) if item != new_array[new_array.length-1]
    end

    return new_array
end

# def unique_in_order(param)
#     input_array = param.is_a?(String) ? param.split('') : param

#     new_array = []

#     input_array.each_with_index do |item, index|
#         new_array.push(item) if index == 0 || item != input_array[index - 1]
#     end

#     return new_array
# end

p unique_in_order("AAAABBBCCDAABBB")
p unique_in_order("ABBCcAD")
p unique_in_order([1,2,2,3,3])