require './test/test_helper'
require 'minitest/pride'
require './lib/library'

class LibraryTest < Minitest::Test

  def test_if_it_exists
    dpl = Library.new

    assert_instance_of Library, dpl
  end

  def test_if_it_initializes_with_an_empty_books_array
    dpl = Library.new

    assert_equal [], dpl.books
  end

  def test_add_to_collection_checks_if_adds_book_to_library
    dpl = Library.new
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write_book("Jane Eyre", "October 16, 1847")

    dpl.add_to_collection(jane_eyre)

    assert_equal [jane_eyre], dpl.books
  end

  def test_add_to_collection_checks_if_adds_books_to_library
    dpl = Library.new
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write_book("Jane Eyre", "October 16, 1847")
    villette  = charlotte_bronte.write_book("Villette", "1853")
    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.write_book("To Kill a Mockingbird", "July 11, 1960")

    dpl.add_to_collection(jane_eyre)
    dpl.add_to_collection(mockingbird)
    dpl.add_to_collection(villette)

    assert_equal [jane_eyre, mockingbird, villette], dpl.books
    assert_equal 3, dpl.books.count
  end

  def test_include_method
    skip
    dpl = Library.new
    charlotte_bronte = Author.new({first_name: "Charlotte", last_name: "Bronte"})
    jane_eyre = charlotte_bronte.write_book("Jane Eyre", "October 16, 1847")
    villette  = charlotte_bronte.write_book("Villette", "1853")
    harper_lee  = Author.new({first_name: "Harper", last_name: "Lee"})
    mockingbird = harper_lee.write_book("To Kill a Mockingbird", "July 11, 1960")

    dpl.add_to_collection(jane_eyre)
    dpl.add_to_collection(mockingbird)
    dpl.add_to_collection(villette)

    assert_equal [jane_eyre, mockingbird, villette], dpl.books
    assert_equal 3, dpl.books.count
  end

end
