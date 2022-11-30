class Api::V1::ApidocsController < ApplicationController
  include Swagger::Blocks
  swagger_root do
    key :swagger, '2.0'
	info do
      key :version, '0.1.0'
	  key :title, '測試 API'
	  key :description, '測試中 API'
	  key :name, 'Ya-Ching Tsui'
	end
	
	key :host, "localhost"
	key :schemes, ['https']
	key :basePath, '/api/v1'
	key :consumes, ['application/json']
	key :produces, ['application/json']
  end

	SWAGGERED_CLASSES = [
      Api::V1::CoursesController,
	  Course,
	  Unit,
	  self,
	]

	def index
	  render json: Swagger::Blocks.build_root_json(SWAGGERED_CLASSES)
	end
end