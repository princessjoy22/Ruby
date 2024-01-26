# duck-typing

class Author
  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

class Book
  attr_accessor :title

  def initialize(title)
    @title = title
  end

  def name
    @title
  end
end

def print(object)
  puts object.name
end


author = Author.new("J.K. Rowling")
book_title = Book.new("Harry Potter and the Prisoner of Azkaban")

print(author)
print(book_title)

