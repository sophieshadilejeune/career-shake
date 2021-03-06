Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  root to: 'pages#home'

  get 'dashboard', to: 'pages#dashboard'


  resources :prof_listings, only: [:index, :show, :new, :create, :edit, :update] do
    resources :connections, only: [:create, :destroy] do
      resources :messages, only: [:create, :index]
    end
  end

  # resources :connections, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
