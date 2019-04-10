class Author 
    attr_accessor :first_name, :last_name

    @@all = []

    # note: keyword arguments 
    def initialize(first_name:nil,last_name:nil)
        @first_name = first_name 
        @last_name = last_name
        @@all << self  
    end

    def self.all 
        @@all 
    end

    def books
        edges = BookAuthor.all.select { |edge| edge.author == self }
        edges.map { |edge| edge.book }.uniq  
    end

    def total_words
        books.inject(0) { |sum,book| sum += book.word_count } 
    end

    def write_book(title,word_count)
        book = Book.new(title:title,word_count:word_count)
        BookAuthor.new(book,self)
        book 
    end

    def self.most_words
        self.all.max_by { |author| author.total_words }
        # alternative way:
        # self.all.inject do |highest_author,author|
        #      if author.total_words > highest_author.total_words
        #           author
        #      else 
        #           highest_author
        #      end 
        # end
        # (the code can be shortened using shorter var-names and the ternary operator, ?:)
    end

end
