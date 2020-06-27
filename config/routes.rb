Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # resources :rows, only: [:index, :show]

  resources :gardens, only: [:index, :show, :new, :create, :destroy] do
    resources :rows, only: [:new, :create, :show, :index] do
      resources :garden_vegetables, only: [:new, :create, :show, :index]
    end
  end
  resources :rows, only: [:destroy]
  resources :garden_vegetables, only: [:destroy]
end

