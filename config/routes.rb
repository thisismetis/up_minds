UpMinds::Application.routes.draw do

  root 'homes#show'

  resources :users, only: [:show]

end
