# Implement the method unique_in_order which takes as argumrnt a sequence and returns a list of items without any elements with the same value next to each other and preserving the original order of elements.

def unique_in_order(sequence)
    list = Set.new
    current_value = nil

    if sequence.is_a?(String)
        sequence.each_char do |value|
            if current_value != value
                list.add(value)
                current_value = value
            end         
        end
    else
        sequence.each do |value|
            if current_value != value
                list.add(value)
                current_value = value
            end

        end
    end
    list
end

puts unique_in_order('AAAABBBCCDAABBB');
puts unique_in_order('ABBCcAD');
puts unique_in_order([1,2,2,3,3]);