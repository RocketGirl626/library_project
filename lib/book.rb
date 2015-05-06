class Book
attr_reader(:title, :author, :id)

  define_method(:initialize) do |attributes|
    @title = attributes.fetch(:title)
    @author = attributes.fetch(:author)
    @id = attributes.fetch(:id).to_i
  end

  define_method(:all) do
  end

end
