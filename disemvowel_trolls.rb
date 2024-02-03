# Write a method that takes a string and 
# return a new string with all vowels removed.

def disemvowel_trolls(comment)
    return_message = []
    vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    comment.each_char do |letter|
        if vowels.include?(letter)
        else
        return_message.push(letter)
        end
    end
    return_message.join
end

puts disemvowel_trolls("This website is for losers LOL!");