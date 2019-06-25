Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post '/trainers', to: 'trainers#create'
      post '/trainers/:id', to: 'trainers#update'
      get '/pokemons', to: 'pokemons#index'
      get '/trainers', to: 'trainers#index'
      resources :types, only: [:index, :show]
    end
  end
end

# get 'users/:id/photos/:photo_id', to: 'users#edit_photo'
