# The vowel code
# Create a function called encode() to replace all the lowercase vowels in a given string with numbers according to the following pattern:
# a = 1, e = 2, i = 3, o = 4, u = 5


def encode(str) 
    vowels = [ 'a', 'e', 'i', 'o', 'u'] 
    encoded_str = ""

    str.each_char do |char|
        if vowels.include?(char)
            encoded_str += (vowels.index(char) + 1).to_s
        else
            encoded_str += char
        end
    end
    return encoded_str
end


# Create a function called decode() to turn numbers back into vowels according to the same pattern shown above.

def decode(str)
    vowels = [ 'a', 'e', 'i', 'o', 'u']
    decoded_str = ""

    str.each_char do |char|
        if char.match(/[1-5]/)
            decoded_str += vowels[char.to_i - 1]
        else
            decoded_str += char
        end
    end
    return decoded_str
end


puts encode('Hello World');
puts decode('H2ll4 W4rld');