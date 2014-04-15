UpMinds::Application.routes.draw do

  root 'homes#show'

  resources :users, only: [:new, :edit, :show, :update] do
    resources :projects, only: [:new, :create, :show, :edit, :update]
  end
  resource :dashboard, only: [:show]
end
