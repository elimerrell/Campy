Rails.application.routes.draw do
  resources :comments, only: [:new, :create, :edit]
  resources :rec_area_facilities, only: [:index, :show]
  resources :rec_areas, only: [:index, :show]
  resources :facilities, only: [:index, :show]
  resources :facility_address, only: [:index, :show]
  resources :campsites, only: [:index, :show]
  resources :users, only: [:new, :create]

 get '/', to: 'application#welcome', as: 'welcome_path'
 get '/home', to: 'application#home'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
