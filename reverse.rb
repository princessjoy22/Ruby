def reverse(str)
    reversed_str = ""

    str.each_char do |char|
        reversed_str = char + reversed_str
    end

    reversed_str
end

puts reverse("tomato");