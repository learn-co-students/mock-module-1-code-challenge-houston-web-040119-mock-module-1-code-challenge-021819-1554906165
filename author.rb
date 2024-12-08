class Author
    
    attr_accessor :name
    @@all = []
    
    def initialize(name)
        @name = name
        @@all.push(self)
    end
    
    def books
        BookAuthor.all.select do |bookauthor|
            if bookauthor.author == self
                bookauthor.book
            end
        end
    end
    
    def write_book(title,word_count)
        book = Book.new(title, word_count)
        BookAuthor.new(book,self)
    end
    
    def self.all
        @@all
    end
    
    def total_words
        total=0
        self.books.each do |booke|
            total += booke.book.word_count
        end
        total
    end
    
    def self.most_words
        Author.all.max_by do |author|
            author.total_words
        end
    end
    
    
end