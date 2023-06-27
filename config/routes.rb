Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resource :profile, only: [:show, :edit, :update, :post] do
    resources :users, only: [:edit, :update]
  end

  resources :projects, only: [:index, :create, :show, :new, :edit, :update, :destroy] do
    resources :tasks, only: [:create, :new]
  end

  resources :tasks, only: [:show, :edit, :update, :post, :destroy]
end
