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
    @book_2 = {
    title: "harry_potter",
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

  def test_get_book_by_name()
    @library.add_book(@book_1)
    @library.add_book(@book_2)

    assert_equal(@book_1, @library.get_book_by_name("lord_of_the_rings"))
    assert_equal(@book_2, @library.get_book_by_name("harry_potter"))
  end

  def test_check_rental_detail_by_book_name()
    @library.add_book(@book_1)
    result = @book_1[:rental_details]
    assert_equal(result, @library.check_rental_detail_by_book_name("lord_of_the_rings"))
  end

  def test_add_book_by_title()
    @library.add_book_by_title("Sweetcorn")
    result = @library.get_book_by_name("Sweetcorn")
    expected =
    {
      title: "Sweetcorn",
      rental_details: {
      student_name: "",
      date: "" }
     }
    assert_equal(expected, result)
  end

  def test_update_rental_detail_by_book_name()
    @library.add_book(@book_1)
    @library.update_rental_detail_by_book_name("lord_of_the_rings", "Ted", "23/07/18")
    expected =
    {
      title: "lord_of_the_rings",
      rental_details: {
      student_name: "Ted",
      date: "23/07/18" }
    }
    assert_equal(expected, @library.get_book_by_name("lord_of_the_rings"))
  end
  end
