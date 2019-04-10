require 'pry'

class BookAuthor

  attr_accessor :book, :author


  @@all = []

  def initialize(book, author)
    @book = book
    @author = author


    # binding.pry
    @@all << self
  end

  def self.all

    @@all
  end



end
