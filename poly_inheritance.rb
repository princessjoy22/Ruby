class Author
    def initialize(name, age, book)
        @name = name
        @age = age
        @book = book
    end

    def describe
        puts "My name is #{@name} and I'm #{@age} years old. I love writing!"
    end
end

class Book < Author
    def title
        puts "I wrote #{@book}."
    end

    def describe
        puts "This book is written by #{@name}."
    end
end

author = Book.new("J.K Rowling", 58, "Fantastic Beasts")
author.describe
author.title

author = Author.new("J.K Rowling", 58, "Fantastic Beasts")
author.describe
