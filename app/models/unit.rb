class Unit < ApplicationRecord
	belongs_to :course
	validates_presence_of :name, :course_id, :content, :order
	validates_uniqueness_of :order, :scope => :course_id
end
