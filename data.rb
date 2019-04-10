# assume environment already exists

author1 = Author.new(first_name:"Stephen",last_name:"King")
author2 = Author.new(first_name:"Mark",last_name:"Twain")
author3 = Author.new(first_name:"Herman",last_name:"Melville")
author4 = Author.new(first_name:"Fred",last_name:"McGovern")
author5 = Author.new(first_name:"Sally",last_name:"Smith")

# books with single author
author1.write_book("IT",372)
author3.write_book("Moby Dick",500)
author4.write_book("History of Rome",400)

# author with many books 
author2.write_book("Tom Sawyer",125)
author2.write_book("Huck Finn",200)

# books with many authors
BookAuthor.new(
    author4.write_book("History of Britain",500),
    author5
)
BookAuthor.new(
    author4.write_book("History of France",500),
    author5
)
