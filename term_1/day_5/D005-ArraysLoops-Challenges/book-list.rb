fav_books = ["Barking Up The Wrong Tree", "Jane Eyre", "Harry Potter"]
authors = ["Eric Barker", "Charlotte Bronte", "JK Rowling"]
# Two numbers keep track of which book to insert and where
book_num = 0
index_num = 1
# fav_books.length needs to be stored or while loop is endless
books_length = fav_books.length

while book_num < books_length
    fav_books.insert(index_num, authors[book_num])
    book_num += 1
    index_num += 2
end

puts fav_books