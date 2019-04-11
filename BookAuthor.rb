
class BookAuthor
    
    attr_accessor :book, :author
    @@all = []
    
    def initialize(book,author)
        @book = book
        @author = author
        @@all.push(self)
    end
    
    def self.all
        @@all
    end
    
end