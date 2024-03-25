def gimme(arr)
  max = arr[0]
  min = arr[0]

  arr.each do |value|
    max = value if value > max
    min = value if value < min
  end

  arr.each do |value|
    return value if value != max && value != min
  end
end

puts gimme([7, 8, 4]); 
