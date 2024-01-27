class Student
    def initialize(student_id, name, address)
        @student_id = student_id
        @name = name
        @address = address
        @present = false
    end

    def present(status = true)
        @present = status
    end

    def attendance
        if @present
            puts "#@name is present"
        else
            puts "#@name is absent"
        end
    end

    def details
        puts "Id no.: #@student_id"
        puts "Name: #@name"
        puts "Address: #@address"
    end
end

student1 = Student.new(1, "Harry Potter", "4 Privet Drive, Little Whinging, Surrey")
student2 = Student.new(2, "Hermione Granger", "8 Heathgate, Hampstead Garden Suburb, London")

student1.details
student2.details

student1.present(false)
student1.attendance

student2.present
student2.attendance

# puts student2.name