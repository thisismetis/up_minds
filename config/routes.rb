UpMinds::Application.routes.draw do

  root 'homes#show'

  resources :users, only: [:index, :new, :edit, :show, :update] do
    resources :projects, only: [:new, :create, :show]
    resources :proficiencies, only: [:new, :create, :show, :edit, :update]
  end

  resources :projects, only: [:index, :edit, :update] do
    member do
      post 'feature' => 'featured_projects#create'
      post 'unfeature' => 'featured_projects#destroy'
    end
  end

  resource :dashboard, only: [:show]
end
