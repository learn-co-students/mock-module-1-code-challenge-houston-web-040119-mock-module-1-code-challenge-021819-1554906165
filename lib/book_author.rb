### `BookAuthor`

class BookAuthor

  attr_accessor :book, :author

  @@all = []

  def initialize (author, book)
    #Initialize an instance of Joiner Class with the Parents (Book, and Author - both objects)
    @book = book
    @author = author
    @@all << self
  end

  def self.all
    #returns all of the book_author objects
    @@all
  end

end
