require_relative "./author.rb"
require_relative "./book.rb"
require_relative "./book_author.rb"
require 'pry'

#new authors
jk = Author.new("JK Rowling")
sk = Author.new("Steven King")

#new books
@sorcstone = jk.write_book("Sorceror's Stone", 25000)
@goglet = jk.write_book("Goblet of Fire", 50000)
@it = sk.write_book("IT", 30000)
@shining = sk.write_book("The Shining", 40000)

#test books




binding.pry
0