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


get('/books') do
  
end


get('/patrons') do

end
