class Author


    attr_accessor :book, :name

    @@all = []
    def initialize(name)
        @name = name


        @@all << self
        
    end

    def self.all
        @@all
    end

    def books
        Book_author.all.select do |book_author|
            if self.name == book_author.author_name
                return book_author.book_title
            end
        end

    end

    def write_book(title, word_count)
        Book_author.new(title, self.name)
       
        Book.new(title, word_count, self.name)
       
    end
end