Rails.application.routes.draw do
  devise_for :trainers # devise implements login and sign-in for us
  root to: "home#index"
  resources :trainers # automatically creates routes of path for us

  patch '/capture', to: 'pokemon#capture', as: 'capture'
  patch '/damage', to: 'pokemon#damage', as: 'damage'

  get '/pokemon/new', to: 'pokemon#new', as: 'new'
  post '/pokemon/new', to: 'pokemon#create', as:'create'
end
