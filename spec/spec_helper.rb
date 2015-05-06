require('rspec')
require('book')
require('patron')
require('pg')

# DB = PG.connect({:dbname => 'library_project_test'})
#
# RSpec.configure do |config|
#   config.after(:each) do
#     DB.exec("DELETE FROM book *;")
#     DB.exec("DELETE FROM patron *;")
#   end
# end
