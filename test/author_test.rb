require './test/test_helper'
require './lib/author'

class AuthorTest < Minitest::Test

  def test_if_it_exists
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_instance_of Author, charlotte_bronte
  end

  def test_if_it_has_attributes
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal "Charlotte", charlotte_bronte.first_name
    assert_equal "Bronte", charlotte_bronte.last_name
  end

  def test_if_the_books_array_is_initiall_empty
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})

    assert_equal [], charlotte_bronte.books
  end

  def test_if_it_can_add_books
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    charlotte_bronte.write_book("Jane Eyre", "October 16, 1847")

    assert_instance_of Book, charlotte_bronte.books.first
    assert_equal 1, charlotte_bronte.books.count
  end

  def test_if_it_can_add_another_book
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    charlotte_bronte.write_book("Jane Eyre", "October 16, 1847")
    charlotte_bronte.write_book("Villette", "1853")

    assert_instance_of Book, charlotte_bronte.books.first
    assert_equal 2, charlotte_bronte.books.count
  end

end
