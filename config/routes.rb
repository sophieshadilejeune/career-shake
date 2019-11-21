Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

get "prof_listings/test" => "prof_listings#test"
  root to: 'pages#home'
  resources :prof_listings, only: [:index, :show, :new, :create, :edit, :update] do
    resources :connections, only: [:create, :destroy]

  end

  # resources :connections, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
