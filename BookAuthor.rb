# BookAuthor.all should return all of the instance for BookAuthor class

class BookAuthor
    attr_accessor :author_name, :book_title,:book_author,:book_word_count
    
    @@all=[]
    
    
    
    def initialize(x,y,z,a)
        @author_name = x
        @book_title = y
        @book_author = z
        @book_word_count = a
        @@all.push(self)
    end
    
    def all
        @@all
    end
    
end