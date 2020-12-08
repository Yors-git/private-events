Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'delete', to: 'sessions#destroy'
  get 'welcome', to: 'sessions#welcome'
  resources :events, only: [:index, :show, :new, :create]
  resources :users, only: [:new, :create, :show]
  root "users#show"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
