Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: 'lists#index'
  resources :lists, only: %i[new show create] do
    resources :bookmarks, only: %i[index new create destroy] do
      resources :movies, only: %i[index]
    end
  end
end
