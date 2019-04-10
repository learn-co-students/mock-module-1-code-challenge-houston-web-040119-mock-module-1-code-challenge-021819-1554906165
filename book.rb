require 'pry'

class Book

  attr_reader :title, :word_count

  @@all = []

  def initialize(title, word_count)
    @title = title
    @word_count = word_count

    @@all << self
  end

  def author
    BookAuthor.all.find {|book_author| book_author.book == self}.author
  end

  def self.all
    @@all
  end


end
