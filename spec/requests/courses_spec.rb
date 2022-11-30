require "rails_helper"

RSpec.describe "Courses requests" do
	describe "GET api/v1/courses" do
		it "returns an array of courses" do
			get("/api/v1/courses")
			json = JSON.parse(response.body)
		end
	end
end