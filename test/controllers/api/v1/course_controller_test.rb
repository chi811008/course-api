require "test_helper"

class Api::V1::CourseControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get api_v1_courses_url
    assert_response :success
  end

  test "should create course" do
    assert_difference("Course.count") do
      post api_v1_courses_url, params: { course: { name: @course.name, description: @course.description, lecturer_name: @course.lecturer_name}}
    end
  end

  test "should show user" do
    get api_v1_course_url(@course)
    assert_response :success
  end

  test "should destroy course" do
    assert_difference("Course.count", -1) do
      delete api_v1_course_url(@course)
    end
  end
end
