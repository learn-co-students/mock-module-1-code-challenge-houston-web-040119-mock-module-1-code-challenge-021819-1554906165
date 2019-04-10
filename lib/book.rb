### `Book`

class Book

  attr_accessor :title, :word_count

  @@all = []

  def initialize (title, word_count)
    #Initialize an instance of Book with Title and Number of Words
    @title = title
    @word_count = word_count
    @@all << self
  end

  def author
    # should return the author instance who wrote this book
    arr = BookAuthor.all.select {|value| value.book == self}
    arr.map {|book_author| book_author.author}
  end

  def self.all
    #returns all of the authors
    @@all
  end

end
