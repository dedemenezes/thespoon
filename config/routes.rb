Rails.application.routes.draw do
  get '/restaurants', to: 'restaurants#index', as: :restaurants
  post '/restaurants', to: 'restaurants#create'
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  patch '/restaurants/:id', to: 'restaurants#update'
  delete '/restaurants/:id', to: 'restaurants#destroy'
  # resources :restaurants, except: [:index, :show]
end
