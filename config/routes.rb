Rails.application.routes.draw do
  resources :comments
  resources :rec_area_facilities
  resources :rec_areas
  resources :facilities
  resources :facility_address
  resources :campsites
  resources :users

 get '/', to: 'application#welcome'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
