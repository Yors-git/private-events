Rails.application.routes.draw do
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'delete', to: 'sessions#destroy'
  get 'welcome', to: 'sessions#welcome'
  resources :attendances, only: [:new, :create, :update, :destroy]
  resources :events, only: [:index, :show, :new, :create]
  resources :events do
    member do
      get :rsvp
    end
  end
  resources :users, only: [:index, :new, :create, :show]
  root "events#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
