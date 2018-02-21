require './lib/book'

class Author

  attr_reader :first_name,
              :last_name,
              :books

  def initialize(data)
    @first_name = data[:first_name]
    @last_name  = data [:last_name]
    @books      = []
  end

  def write_book(title, date)
    books << Book.new({author_first_name: first_name, author_last_name: last_name, publication_date: date, title: title})
  end

end
