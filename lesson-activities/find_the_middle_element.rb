# Find the middle element
# You need to create a fcuntion that when provided with a triplet, returns the index of the numerical
# element that lies between the other two elements

# the input of the function be an array of three distinct numbers(Haskell: a tuple)

# sample

# gimme([2,3,1]) => 0 , 2 is the number that fits between 1 and 3 and the index of 2 in the input array is 0
# gimme([5,10,14]) => 1, 10 is the number that fits between 5 and 14 and the index of 10 in the input array is 1

def find_middle_element_index(array)
    array.each_with_index do |num, index|
        return index if array[index] == (array.sort)[1]
    end
end

p find_middle_element_index([2,3,1])
p find_middle_element_index([5,10,14])
p find_middle_element_index([100,31,64])