Rails.application.routes.draw do
  root "top#index"
  devise_for :users
  resources :users, only: [:index, :show]
  resources :patients do
    resources :informations, only: [:create, :destroy]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # ゲストログインアクション
  devise_scope :user do
    post "users/guest_sign_in", to: "users/sessions#guest_sign_in"
  end
end
