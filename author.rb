require 'pry'
class Author
    @@all = []
    attr_accessor :books, :write_book, :total_words
    def initialize(books, write_book, total_words)
        @books = books
        @books = []
        @write_book = write_book
        @total_words = total_words
        

        @@all << self
    end

    def self.all
        @@all
    end

    def books
        @books = book
    end

    def total_words
        @total_words = total_words
    end

    def self.most_word
    end

    binding.pry
    0
end