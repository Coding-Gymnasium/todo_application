Rails.application.routes.draw do
  root 'pages#home'
  authenticated :user do
    root 'pages#my_todo_items', as: :authenticated_root
  end
  devise_for :users
end
