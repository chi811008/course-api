class Api::V1::CourseController < ApplicationController
  before_action :set_course, only: %i[ show edit update destroy ]

  def index
    courses = Course.all
    render json: {status: "SUCCESS", message: "List of Courses", data: courses}, status: :ok
  end

  def show
    render json: {status: "SUCCESS", message: "Course", data: @course}, status: :ok
  end

  def create
    @course = Course.new(course_params)
    if @course.save
      render json: {status: "SUCCESS", message: "Saved Course", data: @course}, status: :ok
    else
      render json: {status: "ERROR", message: "Course not Saved", data: @course.errors}, status: :unprocessable_entity
    end
  end
	
  def update
    if @course.update(course_params)
      render json: {status: "SUCCESS", message: "Updated Course", data: @course}, status: :ok
    else
      render json: {status: "ERROR", message: "Course not Updated", data: @course.errors}, status: :unprocessable_entity
    end
  end

  def destroy
    @course.destroy
    render json: {status: "SUCCESS", message: "Deleted Course", data: @course}, status: :ok
  end


  private

    def set_course
      @course = Course.find(params[:id])
    end

    def course_params
      params.require(:course).permit(:name, :description, :lecturer_name)
    end
end
