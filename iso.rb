# ISOGRAMS

# Implement a function that determines whether a string that contains only letters is an isogram. Assume the empty string is an isogram. Ignore letter case.

def is_isogram(word)
    letters = Set.new
    current_letter = nil

    word.downcase.each_char do |letter|
        if current_letter = letter
            return false if letters.include?(letter)
        end
        letters.add(letter)
        end
    true
end

puts is_isogram("Dermatoglyphics");
puts is_isogram("aba");
puts is_isogram("moOse");
puts is_isogram("ISOGRAM");
