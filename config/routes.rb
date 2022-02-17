Rails.application.routes.draw do
  get 'bookmarks/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :lists do
    resources :bookmarks, only: [:new, :show]
  end
end
