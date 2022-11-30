class Api::V1::UnitsController < ApplicationController
  before_action :set_course
  before_action :set_unit, only: %i[ show edit update destroy ]

  def index
    @units = @course.unit.order(:order)
    render json: {status: "SUCCESS", message: "List of Units", data: @units}, status: :ok
  end
  
  def show
    render json: {status: "SUCCESS", message: "Unit", data: @unit}, status: :ok
  end

  def create
    @unit = @course.unit.build(unit_params)
    if @unit.save
      render json: {status: "SUCCESS", message: "Saved Unit", data: @unit}, status: :ok
    else
      render json: {status: "ERROR", message: "Unit not Saved", data: @unit.errors}, status: :unprocessable_entity
    end
  end
  
	def update
	  if @unit.update(unit_params)
        render json: {status: "SUCCESS", message: "Updated Unit", data: @unit}, status: :ok
	  else
        render json: {status: "ERROR", message: "Unit not Updated", data: @unit.errors}, status: :unprocessable_entity
	  end
	end
  
	def destroy
	  @unit.destroy
      render json: {status: "SUCCESS", message: "Deleted Unit", data: @unit}, status: :ok
	end
  
	private
	  def set_course
		@course = Course.find(params[:course_id])
	  end
  
	  def set_unit
		@unit = @course.unit.find(params[:id])
	  end
  
	  def unit_params
		params.require(:unit).permit(:order, :name, :course_id, :description, :content)
	  end
end
