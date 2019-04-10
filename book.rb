class Book

    attr_accessor :title, :word_count

    @@all = []

    def initialize(title, word_count)
        @title = title
        @word_count = word_count.to_i
        @@all << self
    end

    def self.all
        @@all
    end

    def author
        Book.all.select do |author|
            author.book == self 
        end
    end
    

    def title
        self.title.map do |titles|
            titles.book
        end
    end
    # binding.pry

    def word_count
        self.word_count.map do |words|
            words.book
        end
    end
    # binding.pry




end

0