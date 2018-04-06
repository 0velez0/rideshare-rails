Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :drivers do
    resources :trips, only: [:index]
  end

  resources :passengers do
    resources :trips, only: [:index, :create]
  end
  # we don't need a list of all the trips, we don't need functionality to create a new trip
  resources :trips, only: [:show, :edit, :update, :destroy]

end
