class Author

    @@all = []

    attr_accessor :name, :books, :word_count
    def initialize(name, books, word_count)
        @name = name
        @books = books
        @word_count = word_count
        @@all << self
    end

    def self.all
        @@all
    end

    def books
        @books
    end

    def write_book(title, word_count)
      book1 = Book.new("TEST", 10000)
      book1.map{|title, words| }
    
    end

    def total_words
        Author.word_count.map{|words| author.word_count}
    end

    def self.most_words
        self.max_by {&:word_count}
    end



end