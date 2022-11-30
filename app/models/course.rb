class Course < ApplicationRecord
	include Swagger::Blocks

	swagger_schema :Course do
		property :name do
		  key :type, :string
		  key :example, 'Course title'
		end
		property :description do
		  key :type, :text
		  key :example, 'Course content'
		end
		property :lecturer_name do
		  key :type, :string
		  key :example, 'Course lecturer'
		end
	  end
	  swagger_schema :CourseOutput do
		allOf do
		  schema do
			property :id do
			  key :type, :integer
			  key :example, 1
			end
		    property :name do
		      key :type, :string
		      key :example, 'Course title'
		    end
		    property :description do
		      key :type, :text
		      key :example, 'Course content'
		    end
		    property :lecturer_name do
		      key :type, :string
		      key :example, 'Course lecturer'
		    end
			property :created_at do
			  key :type, :datetime
			  key :example, '2019-04-19T07:07:23.982Z'
			end
			property :updated_at do
			  key :type, :datetime
			  key :example, '2019-04-19T07:07:23.982Z'
			end
		  end
		  schema do
			key :'$ref', :Unit
		  end
		end
	  end

	validates_presence_of :name, :lecturer_name
	has_many :unit
end
