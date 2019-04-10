class Author

  @@all = []

  def initialize

    @@all << self
  end

  def books
    book_author = BookAuthor.all.select {|book_author_object| book_author_object.author == self}
    book_author.map {|book_author_object| book_author_object.book}
  end

  def write_book(title, word_count)
    new_book = Book.new(title, word_count)
    BookAuthor.new(new_book, self)
    new_book
  end

  def total_words
    self.books.map {|book| book.word_count}.inject(0, &:+)
  end

  def self.most_words
    max_total_words = Author.all.collect {|author| author.total_words}.max
    Author.all.find {|author| author.total_words == max_total_words}
  end

  def self.all
    @@all
  end

end
