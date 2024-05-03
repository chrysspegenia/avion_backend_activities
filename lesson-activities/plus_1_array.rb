# +1 Array
#Given an array of integers of any length, return an array that has 1 added to the value represented by the array.

# the array cant be empty
# only non-negative, single digit integers are allowed

# return nil for invalid inputs

def up_array(array)
    return nil unless array.all? {|num| num.is_a?(Integer)}

    (array.join.to_i + 1).to_s.chars.map {|num| num.to_i}

    # # join turns it to string
    # up_integer = array.join.to_i + 1

    # # chars to convert back to array of strings of letters
    # new_array = up_integer.to_s.chars

    # new_array.map do |num|
    #     num.to_i
    # end
end

p up_array([1,2,"e"])
p up_array([1,2,9])
p up_array([1,9,2])
p up_array([9,1,2])