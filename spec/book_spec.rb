require('spec_helper')

describe(Book) do

  describe('#title') do
    it('will return the title of a book') do
      book = Book.new({:title => "Harry Potter", :author => "JK Rowling", :id => nil})
      expect(book.title()).to(eq("Harry Potter"))
    end
  end

  describe('#author') do
    it('will return the author of a book') do
      book = Book.new({:title => "Harry Potter", :author => "JK Rowling", :id => nil})
      expect(book.author()).to(eq("JK Rowling"))
    end
  end

  describe('#id') do
    it('will return the id of a book') do
      book = Book.new({:title => "Harry Potter", :author => "JK Rowling", :id => nil})
      expect(book.id()).to(be_an_instance_of(Fixnum))
    end
  end

  describe('#all') do
    it('will return empty at first') do
      expect(Book.all()).to(eq([]))
    end
  end

  




end
