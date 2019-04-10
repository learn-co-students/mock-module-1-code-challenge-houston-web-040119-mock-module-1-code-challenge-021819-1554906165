class Book 
    # attr_accessor defines Book#title and Book#word_count automatically
    attr_accessor :title, :year, :word_count

    @@all = []

    # note: keyword arguments 
    def initialize(title:nil,year:nil,word_count:nil)
        @title = title 
        @year = year 
        @word_count = word_count 
        @@all << self 
    end

    def self.all 
        @@all 
    end

    def author
        <<-NOTE
        the README.md requires Book#author to return "the author instance"
        associated with the book, but by definition of many-to-many there
        could be many instances. Hence what I will do here is return
        an Author instance if there is only one, or an array of instances
        if there are many; this is dangerous for typing reasons but
        I don't see another way to satisfy the prescribed constraints.
        NOTE
        edges = BookAuthor.all.select { |edge| edge.book == self }
        results = edges.map { |edge| edge.author }.uniq 

        if results.length == 0
            nil 
        elsif results.length == 1 
            results[0] 
        else 
            results 
        end
    end


end
