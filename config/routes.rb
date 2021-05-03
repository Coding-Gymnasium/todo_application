Rails.application.routes.draw do

  #---- Users
  devise_for :users
  authenticated :user do
    root 'pages#my_todo_items', as: :authenticated_root
  end

  root 'pages#home'

  #---- Todo_items
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :todo_items, only: [:index, :show, :create, :update, :destroy]
    end
  end
end
