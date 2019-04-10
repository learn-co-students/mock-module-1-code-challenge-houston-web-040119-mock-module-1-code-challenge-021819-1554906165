require "pry"
require_relative "./book.rb"
require_relative "./author.rb"
require_relative "./BookAuthor.rb"


author1= Author.new("a1")
author2= Author.new("a2")

book1=Book.new(author2,"b1",10)
book2=Book.new(author1,"b2",20)
book3=Book.new(author2,"b3",30)

# Author.all should return all of the authors
# Author#books should return all of the books an author has written
# Author#write_book should take arguments of a title and word count and make a new Book instance associated with this author
# Author#total_words should return the total number of words that author has written across all of their authored books.
# Author.most_words should return the author instance who has written the most words

# Book.all should return all of the books
# Book#author should return the author instance who wrote this book
# Book#title should return the title of the book
# Book#word_count should return the number of words in the book

binding.pry
0