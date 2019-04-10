class Author

    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        Author.all.select do |book|
            book.author == self
        end
    end
    
    def write_book(title, word_count)
        new_book = self.new("#{title}", word_count)
        new_book
    end

    def total_words
        
    end

    def self.most_words
        Book.word_count.map.max do |max_words|
            max_words
    end




end