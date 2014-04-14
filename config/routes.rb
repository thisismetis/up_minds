UpMinds::Application.routes.draw do

  root 'homes#show'

  resources :users, only: [:new, :edit, :show, :update] 

  resource :dashboard, only: [:show]
end
