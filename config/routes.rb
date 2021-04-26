Rails.application.routes.draw do
  root 'pages#home'
  get 'pages/my_todo_items'
  devise_for :users
end
