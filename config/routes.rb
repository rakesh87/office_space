Rails.application.routes.draw do

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/' => 'home#index', as: :home
      get '/work_spaces/:id' => 'home#details', as: :work_space_details
      post '/sign_up' => 'session#sign_up', as: :sign_up
      post '/sign_in' => 'session#sign_in', as: :sign_in
      resources :work_spaces
      resources :users
      resources :cities
    end
  end
  
end
