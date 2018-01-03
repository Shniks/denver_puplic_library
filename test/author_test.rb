require './test/test_helper'
require 'minitest/pride'
require './lib/author'

class AuthorTest < Minitest::Test

  def test_if_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_instance_of Author, charlotte_bronte
  end

  def test_if_books_array_is_empty
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal [], charlotte_bronte.books
  end

  def test_write_book_assigns_book_to_author
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    book1 = charlotte_bronte.write_book("Jane Eyre", "October 16, 1847")

    assert_instance_of Book, charlotte_bronte.books.first
    assert_includes charlotte_bronte.books, book1
    assert_equal 1, charlotte_bronte.books.count
  end

  def test_write_book_can_assign_a_second_book
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    book1 = charlotte_bronte.write_book("Jane Eyre", "October 16, 1847")
    book2 = charlotte_bronte.write_book("Villette", "1853")

    assert_equal [book1, book2], charlotte_bronte.books
    assert_equal 2, charlotte_bronte.books.count
  end


end
