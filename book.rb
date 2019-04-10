# Build the following methods on the Book class

# Book.all should return all of the books
# Book#author should return the author instance who wrote this book
# Book#title should return the title of the book
# Book#word_count should return the number of words in the book


class Book
    
    @@all=[]
    
    attr_accessor :author, :title, :word_count
    
    def initialize(author,title,word_count)
        @author=author
        @title=title
        @word_count=word_count
        @@all.push(self)
    end
    
    def self.all
        @@all
    end
    
    
end