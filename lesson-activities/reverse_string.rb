# Implement reverse method that takes a string as its input and returns its reverse as the output. 
# Avoid using built-in methods that directly solve the problem. 

# def reverse_string(string)
#     reversed = ""
#     (string.length).downto(0) { |i| reversed << string[i]}
#     reversed
# end

# def reverse_string(string)
#     reversed = []
#     string.each_char.with_index do |char, index|
#        reversed << string[string.length - index - 1]
#     end
#     reversed.join
# end

def reverse_string(string)
    reversed = ""
    (0...string.length).each { |i| reversed << string[string.length - i - 1]}
    reversed
end

p reverse_string("string")
p reverse_string("hello")
p reverse_string("activity")