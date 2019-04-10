class BookAuthor
    attr_accessor :book, :author 
    @@all = []

    def initialize(book=nil,author=nil)
        @book = book 
        @author = author 
        @@all << self 
    end

    def self.all 
        @@all 
    end 
end
