class Author

  attr_accessor :books

  def self.all #should return all of the authors

self.books = "something that contains the books"#final form should not be a string
  end


  def books #should return all of the books an author has written
self.books ="something"

  end


  def write_book(title,word_count) #should take arguments of a title and word count and make a new Book instance associated with this author
    new_author = Book.new("new book???")
  end

  def total_words#should return the total number of words that author has written across all of their authored books.
#access author
#access all books
#access word_count and add them up

  end

  def self.most_words #should return the author instance who has written the most words
    #iterate and compare authors and get who has written most most_words

    author_mostwords = "some author"#not necessarily a string
    if author_mostwords < new_author_mostwords
        author_mostwords =new_author_mostwords
    else
      author_mostwords

    end
    

  end





end
