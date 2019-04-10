# Author
# Build the following methods on the Author class

# Author.all should return all of the authors
# Author#books should return all of the books an author has written
# Author#write_book should take arguments of a title and word count and make a new Book instance associated with this author
# Author#total_words should return the total number of words that author has written across all of their authored books.
# Author.most_words should return the author instance who has written the most words

require "pry"

require_relative "./book.rb"


class Author
    
    @@all=[]
    
    def initialize(name)
        @name=name
        @@all.push(self)
    end
    
    def self.all
        @@all
    end
    
    def books
        Book.all.collect do |x|
            if x.author == self
                x
            end
        end
    end
    
    def write_book(title, word_count)
        Book.new(self,title,word_count)
    end
    
    def total_words
        # Author#total_words should return the total number of words that author has written across all of their authored books.
        total=0
        Book.all.each do |x|
            if x.author == self
                total += x.word_count
            end
        end
        total
    end
    
    # Author.most_words should return the author instance who has written the most words
    def self.most_words
        words_and_authors={}

            Author.all.each do |author|
            author_words=0
                Book.all.each do |x|
                    if x.author == author
                        author_words += x.word_count
                    end
                    # binding.pry
                    words_and_authors[author] = author_words
                end            
            
            end
            #find the largest value out of the hash below
        words_and_authors

    end
    
end
