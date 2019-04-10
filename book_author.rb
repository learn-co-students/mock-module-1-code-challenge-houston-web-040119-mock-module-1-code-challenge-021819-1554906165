class BookAuthor
  attr_accessor :author_name, :title, :word_count
  @@all = []
  def initialize(author_name, title, word_count)
    @author_name = author_name
    @title = title
    @word_count = word_count
    @@all << self
  end

  def self.all
    @@all
  end


end
