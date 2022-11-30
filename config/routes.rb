Rails.application.routes.draw do
  namespace :api, :defaults => { :format => :json } do
    namespace :v1 do
      get "/", to: "apidocs#index"
      resources :courses do
        resources :units
      end
    end
  end
  get "/api", to: "pages#api" 
end
