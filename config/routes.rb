Rails.application.routes.draw do
  resources :campground_activities
  resources :activities
  resources :locations
  resources :campgrounds
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
