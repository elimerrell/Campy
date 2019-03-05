Rails.application.routes.draw do
  resources :comments
  resources :rec_area_facilities
  resources :rec_areas
  resources :facilities
  resources :facility_address
  resources :campsites
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
