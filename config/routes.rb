UpMinds::Application.routes.draw do

  root 'homes#show'

  resources :users, only: [:show, :new, :edit]

  resource :dashboard, only: [:show]

end
