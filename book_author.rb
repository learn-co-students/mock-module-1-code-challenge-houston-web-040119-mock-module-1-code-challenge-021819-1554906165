

class BookAuthor

    attr_reader :author, :book
    @@all = []

    def initialize(author, book)
        @author = author
        @book = book
        @@all.push(self)
    end

    def self.all
        @@all
    end
    
    def name
        self.author
    end

end

# ### `BookAuthor`
# Build the following methods on the BookAuthor class

# - `BookAuthor.all`
# should return all of the instance for BookAuthor class