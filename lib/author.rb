### `Author`

class Author

  attr_accessor :name

  @@all = []

  def initialize (name)
    #Initialize an instance of Author with name
    @name = name
    @@all << self
  end

  def books
    # should return all of the books an author has written
    arr = BookAuthor.all.select {|value| value.author == self}
    arr.map {|book_author| book_author.book}
  end

  def write_book(title,word_count)
    # should take arguments of a title and word count and make a new Book instance associated with this author
    new_book = Book.new(title,word_count)
    BookAuthor.new(self,new_book)
  end

  def total_words
    #should return the total number of words that author has written across all of their authored books.
    total = 0
    arr = self.books
    arr.each {|book| total += book.word_count}
    total
  end

  def self.most_words
    # should return the author instance who has written the most words
    max_words = 0
    writes_a_lot = nil
    self.all.each do |author|
      if author.total_words > max_words
        max_words = author.total_words
        writes_a_lot = author
      end
    end
    writes_a_lot
  end

  def self.all
    #returns all of the authors
    @@all
  end

end
