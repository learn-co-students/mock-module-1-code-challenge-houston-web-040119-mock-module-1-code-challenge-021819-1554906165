class Author
  attr_accessor :name
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
      book.author_name == self.name
    end
  end

  def write_book(title, word_count)
    BookAuthor.new(self.name, title, word_count)
  end

  def total_words
    total = 0
    BookAuthor.all.each do |book|
      if book.author_name == self.name
        total += book.word_count
      end
    end
    total
  end


end
