UpMinds::Application.routes.draw do

  root 'homes#show'

  resources :users, only: [:new, :edit, :show, :update]

  resources :minds, only: [:show, :edit, :update] do
    resources :projects, only: [:new, :create, :show]
    resources :proficiencies
    member do
      post "watch"  => "watching_relationships#create"
    end
  end

  resources :projects, only: [:index, :edit, :update, :destroy] do
    resources :samples, only: [:index, :new, :create, :edit, :update, :destroy]
    member do
      post 'feature' => 'featured_projects#create'
      post 'unfeature' => 'featured_projects#destroy'
    end
  end



  resource :dashboard, only: [:show]
  resource :search, only: [:show]
end
