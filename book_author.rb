class Book_author


    attr_accessor :author_name, :book_title

    @@all = []
    def initialize(book_title, author_name)

        @@all << self


        @book_title = []
        @author_name = author_name
        @book_title << book_title
    end


    def self.all 
        @@all
    end

end