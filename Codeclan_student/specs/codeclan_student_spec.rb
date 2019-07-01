require ("minitest/autorun")
require ("minitest/rg")

require_relative("../codeclan_Student")

class Test_codeclan_student < MiniTest::Test

  def test_student_name
      student = Student.new("John", "E32")
      assert_equal("John", student.name())
  end
  def test_student_can_talk
    student = Student.new("John", "E32")
    assert_equal("I can talk!", student.talk())
  end

  def test_favourite_language
    student = Student.new("John", "E32")
    assert_equal("I love Ruby!", student.say_favourite_language("Ruby"))
  end

end
