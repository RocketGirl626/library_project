require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/book')
require('./lib/patron')
require('pg')

DB = PG.connect({:dbname => "library_project_test"})

get('/') do
  erb(:index)
end

get('/librarian_books') do
  @books = Book.all_books()
  erb(:librarian_books)
end

post('/add_book') do
  title = params.fetch("title")
  author = params.fetch("author")
  new_book = Book.new({:title => title, :author => author, :id => nil})
  new_book.save()
  @books = Book.all_books()
  erb(:librarian_books)
end
