require 'pry'

require_relative './lib/author'
require_relative './lib/book_author'
require_relative './lib/book'

#Create Fake Authors
joe = Author.new("Joe")
frank = Author.new("Frank")
susan = Author.new("Susan")

#create Fake Books
hop_on_pop = Book.new("Hop on Pop",200)
the_odyssey = Book.new("The Odyssey", 70000)
timeline = Book.new("Timeline", 3473)
the_bible = Book.new("The Bible", 2344)

#join books and Authors
a = BookAuthor.new(joe,hop_on_pop)
b = BookAuthor.new(frank,the_odyssey)
c = BookAuthor.new(susan,timeline)
d = BookAuthor.new(susan,the_bible)
e = BookAuthor.new(frank,the_bible)

# have a couple authors write some books, just for good measure.
joe.write_book("The Illiad",4300)
joe.write_book("A NOVEL",1000000)

binding.pry
