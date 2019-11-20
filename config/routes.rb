Rails.application.routes.draw do
  devise_for :users

  root to: 'pages#home'
  resources :prof_listings, only: [:index, :show, :new, :create] do
    resources :connections, only: [:create, :destroy]

  end

  # resources :connections, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
