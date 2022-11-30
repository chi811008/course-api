require "test_helper"

class CourseTest < ActiveSupport::TestCase
  test "name validation should trigger" do
    assert_not Course.new(description: "something", lecturer_name: "someone").save
  end

  test "lecturer_name validation should trigger" do
    assert_not Course.new(name: "somecourse", description: "something").save
  end

  test "course should save" do
    assert Course.new(name: "somecourse", description: "something", lecturer_name: "someone").save
  end

end
