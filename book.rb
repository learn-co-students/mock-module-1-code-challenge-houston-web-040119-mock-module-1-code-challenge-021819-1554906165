class Book
  attr_accessor :author, :title, :word_count
  @@all = []
  def initialize(author, title, word_count)
    @author = author
    @title = title
    @word_count = word_count
    @@all << self
  end

  def self.all
    BookAuthor.all
  end

  def author
    self.author
  end

  def title
    self.title
  end

  def word_count
    self.word_count
  end


end
