


class Book


    attr_accessor :author, :title, :word_count

    @@all = []

    def initialize(title, word_count, author)
        @title = title
        @word_count = word_count
        @author = author


      
        @@all << self
        
    end

  #  def author


        # Book_author.all.select do |book_author|
        #     if self.title == book_author.book_title
        #         return book_author.author_name
        #     end
        # end

 #   end

    def self.all
        @@all
    end

    
end