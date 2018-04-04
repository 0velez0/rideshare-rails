Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :drivers

  resources :passengers

  # we don't need a list of all the trips, we don't need functionality to create a new trip
  resources :trips, except: [:index, :new]

end
