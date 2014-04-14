UpMinds::Application.routes.draw do

  root 'homes#show'

  resources :users, only: [:show] do
    resources :profiles, only: [:show, :new, :edit]
  end

  resource :dashboard, only: [:show]



end
