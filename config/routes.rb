Rails.application.routes.draw do
  devise_for :users
  root "home#index"

  resources :posts do
    resources :favourites, only: [:create, :destroy]
  end
end
