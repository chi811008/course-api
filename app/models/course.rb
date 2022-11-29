class Course < ApplicationRecord
	validates_presence_of :name, :lecturer_name
	has_many :unit
end
