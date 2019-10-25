Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'agenda', to: 'pages#agenda', as: :agenda
  resources :guests, only: [ :create, :index, :new ]
  resources :places, only: [ :index ]
  resources :activities, only: [ :index ]
end
