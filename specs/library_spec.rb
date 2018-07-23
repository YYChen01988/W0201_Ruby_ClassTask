require("minitest/autorun")
require("minitest/rg")
require_relative("../library.rb")

class TestLibrary < MiniTest::Test

  def setup
    @library =Library.new()
    @book_1 = {
    title: "lord_of_the_rings",
    rental_details: {
     student_name: "Jeff",
     date: "01/12/18" }
    }
  end


  def test_get_books()
    assert_equal([], @library.get_books())
  end


  def test_add_books()
    @library.add_book(@book_1)
    assert_equal(1, @library.get_books().length())
  end



  end
