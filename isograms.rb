def is_isogram(word)
    letters = Set.new
    word.downcase.each_char do |letter|
        if letter =~ /[a-z]/
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
