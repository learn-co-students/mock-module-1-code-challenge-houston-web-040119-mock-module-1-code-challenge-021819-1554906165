class Author

  attr_accessor :name, :book

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def books
    BookAuthor.all.select do |book|
      book.author == self
    end
  end

  def write_book(title, word_count)
    BookAuthor.new(self, title, word_count)
  end

  def total_words
    sum = 0
    self.books.map do |book|
      sum += book.word_count
    end
    sum
  end

  def self.most_words
    most_words_author = Author.new("most_words_author")
    Author.all.map do |author|
      if author.total_words > most_words_author.total_words
        most_words_author = author
      end
    end
    most_words_author
  end



end
