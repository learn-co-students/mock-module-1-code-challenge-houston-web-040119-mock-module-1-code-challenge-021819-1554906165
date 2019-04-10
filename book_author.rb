class BookAuthor

@@all = []
attr_accessor : :book, :author

    def initialize (book, author)
        @book = book
        @author = author
        @@all << self
    end

    def self.all
        @@all
    end
    


end