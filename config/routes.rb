Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

 root to: 'pages#index'

get "/categories/:id", to: "dishes#categories", as: "categories"

  devise_for :users

resources :userparams

resources :dishes do
  resources :dishcomments
    member do
    end
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

