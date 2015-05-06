class Book
attr_reader(:title, :author, :id)

  define_method(:initialize) do |attributes|
    @title = attributes.fetch(:title)
    @author = attributes.fetch(:author)
    @id = attributes.fetch(:id).to_i
  end

  define_singleton_method(:all_books) do
    returned_books = DB.exec("SELECT * FROM books;")
    books = []
    returned_books.each() do |book|
      title = book.fetch('title')
      author = book.fetch('author')
      id = book.fetch('id')
      books.push(Book.new({:title => title, :author => author, :id => id}))
    end
    books
  end



end
