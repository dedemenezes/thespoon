Rails.application.routes.draw do
  # LIST ALL RESTAURANTS
  get '/restaurants', to: 'restaurants#index', as: :restaurants
  # CREATE THE RESTAURANT INTO THE DB
  post '/restaurants', to: 'restaurants#create'
  # DISPLAY CREATE RESTAURANT FORM
  get '/restaurants/new', to: 'restaurants#new', as: :new_restaurant
  # DISPLAY EDIT FORM
  get '/restaurants/:id/edit', to: 'restaurants#edit', as: :edit_restaurant
  # DISPLAY INFO ABOU ONE RESTAURANT
  get '/restaurants/:id', to: 'restaurants#show', as: :restaurant
  # UPDATE THE RESTAURANT INTO THE DB
  patch '/restaurants/:id', to: 'restaurants#update'
  # REMOVE THE RESTAURANT FROM DB
  delete '/restaurants/:id', to: 'restaurants#destroy'
  
  # THIS WILL GENERATE ALL THE SEVEN CRUD ROUTES TO US
  # USE IT ONLY ON THE SECOND CHALLENGE!!!!!!
  # resources :restaurants
  # resources :restaurants, except: [:index, :show]
end
