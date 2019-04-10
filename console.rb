require 'pry'
require_relative './author.rb'
require_relative './book.rb'
require_relative './book_author.rb'

a = Author.new
book1 = Book.new("aaa", 100)
book_author1 = BookAuthor.new(book1, a)
a.write_book('ccc', 200)
a.write_book('bbb', 300)

b = Author.new
b.write_book('ddd', 20)
b.write_book('eee', 200)

c = Author.new
c.write_book('fff', 1000)
c.write_book('ggg', 200)
c.write_book('hhh', 200)

binding.pry
0
