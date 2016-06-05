Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :work_spaces
      resources :users
    end
  end
  
end
