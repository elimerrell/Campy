Rails.application.routes.draw do
  resources :facilities
  resources :facility_address
  resources :campsites
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
