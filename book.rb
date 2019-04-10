

class Book

    attr_reader :name, :words, :written_by #lol,  books, reading, haha

    @@all = []

    def initialize(name, words, written_by)
        @name = name
        @words = words
        @written_by = written_by
        @@all.push(self)
    end

    def self.all
        @@all
    end

    def author
        self.written_by
    end

    def title
        self.name
    end

    def word_count
        self.words
    end




end








# Build the following methods on the Book class

# - `Book.all`
# should return all of the books
# - `Book#author`
# should return the author instance who wrote this book
# - `Book#title`
# should return the title of the book
# - `Book#word_count`
# should return the number of words in the book
