require 'rails_helper'

RSpec.describe Course, type: :model do
  context "validation tests" do
    it "ensure name presence" do
    course = Course.new(description: "something", lecturer_name: "someone").save
    expect(course).to eq(false)
    end

    it "ensure lecturer_name presence" do
    course = Course.new(name: "somecourse", description: "something").save
    expect(course).to eq(false)
    end
    
    it "should save successfully" do
    course = Course.new(name: "somecourse", description: "something", lecturer_name: "someone").save
    expect(course).to eq(true)
    end
  end

  context "scope tests" do
    let (:params) { {name: "somecourse", description: "something", lecturer_name: "someone"} }
    before(:each) do
      Course.new(params).save
      Course.new(params).save
    end
  end

end
