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

  # def test_one_book
  #   charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
  #   charlotte_bronte.write_book("Jane Eyre", "October 16, 1847")
  #
  #   assert_equal , charlotte_bronte.books
  # end


end
