require("minitest/autorun")
require("minitest/rg")
require_relative("../Student.rb")

class TestStudent < MiniTest::Test
  def setup()
    @student_1 = Student.new("Ying", "G7")
  end

  def test_student_name()
    assert_equal("Ying", @student_1.name())
  end

  def test_student_cohort()
      assert_equal("G7", @student_1.cohort())
  end

  def test_update_name()
    @student_1.set_new_name("Alice")
    assert_equal("Alice", @student_1.name())
  end

  def test_update_cohort()
    @student_1.set_new_cohort("G3")
    assert_equal("G3", @student_1.cohort())
  end

  def test_get_student_to_talk()
    result = @student_1.talk("I can talk!")
    assert_equal("I can talk!", result)
  end

  def test_student_fav_language()
    result = @student_1.say_favourite_language("Ruby")
    assert_equal("I love Ruby", result)
  end





end
