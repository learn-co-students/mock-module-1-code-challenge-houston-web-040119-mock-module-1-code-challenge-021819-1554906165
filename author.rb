
require 'pry'
class Author
    attr_accessor :name
    @@all = []
    def initialize(name)
    end
    
    def self.all           #returns all the authors
        @@all << self
    end


    def books        #return the author instance who wrote this book
    end


    def write_book     #return the title of the book
    end

def total_words   #return the number of words in the book
end

def most_words
end












end