

class Book
    
    
    
    
    attr_accessor :title, :word_count
    @@all=[]
    
    def initialize(title, word_count)
        @title = title
        @word_count = word_count
        @@all.push(self)
    end
    
    def authors
        BookAuthor.all.select do |bookauthor|
            if bookauthor.book == self
                bookauthor.author
            end
        end
    end
    
    def self.all
        @@all
    end
    
end