class Library

  attr_reader :books

  def initialize
    @books =[]
  end

  def add_to_collection(book)
    books << book
  end

  def include?(title)
    books.any? { |book| book.title == title }
  end

  def find_all_books_by_author(author_name)
    books.find_all do |book|
      author_name == "#{book.author_first_name} #{book.author_last_name}"
    end
  end

  def find_by_author(author_name)
    authors = {}
    find_all_books_by_author(author_name).each do |book|
      authors[book.title] = book
    end
    authors
  end

end
