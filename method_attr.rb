class City
    def initialize(name, population, area)
        @name = name
        @population = population
        @area = area
    end

    def name
        @name
    end

    def population
        @population
    end

    def area
        @area
    end

    def name=(new_name)
        @name = new_name
    end

    def population=(new_population)
        @population = new_population
    end

    def area=(new_area)
        @area = new_area
    end
end

city = City.new("Iriga" , "111, 757", "174 sq.kms" )

puts city.name
puts city.population
puts city.area