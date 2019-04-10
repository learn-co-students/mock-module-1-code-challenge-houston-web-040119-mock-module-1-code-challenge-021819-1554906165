require 'pry'
require_relative './book.rb'
require_relative './author.rb'
require_relative './book_author.rb'


book_author1 = BookAuthor.new("J.R. Tolkin", "Lord of the rings")
book1 = Book.new(book_author1.book, 1000, book_author1.name)
author1 = Author.new(book_author1.name, book1)

binding.pry

