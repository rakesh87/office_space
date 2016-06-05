Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      post '/sign_up' => 'session#sign_up', as: :sign_up
      post '/sign_in' => 'session#sign_in', as: :sign_in
      resources :work_spaces
      resources :users
      resources :cities
    end
  end
  
end
