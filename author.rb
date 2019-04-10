

class Author

    attr_reader :name

    @all = []

    def initialize(name, book_name)
        @name = name
        @book = []
        @book.push(book_name)

    end

    def books
        @book
    end

    def write_book(title, words)
        title = Book.new(title, words, self)
        @book.push(title)
    end

    # def total_words
    #     sum = 0 
    #     books.each do books.word_count

    # end









end




# Build the following methods on the Author class

# - `Author.all`
# should return all of the authors
# - `Author#books`
# should return all of the books an author has written
# - `Author#write_book`
# should take arguments of a title and word count and make a new Book instance associated with this author
# - `Author#total_words`
# should return the total number of words that author has written across all of their authored books.
# - `Author.most_words`
# should return the author instance who has written the most words