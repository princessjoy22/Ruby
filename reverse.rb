def reverse(str)
    reversed_str = ""

    str.each_char do |char|
        reversed_str = char.to_s + reversed_str
    end

    return reversed_str
end

puts reverse("tomato");