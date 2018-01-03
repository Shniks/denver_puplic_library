require './lib/book'

class Author

  attr_reader :books

  def initialize(author)

    @books = []

  end

  def write_book(title, year)
    @books << Book.new
    

  end



end
