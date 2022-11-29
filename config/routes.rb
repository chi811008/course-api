Rails.application.routes.draw do
  namespace :api, :defaults => { :format => :json } do
    namespace :v1 do
      resources :course do
        resources :unit
      end
    end
  end

  resources :course
end
