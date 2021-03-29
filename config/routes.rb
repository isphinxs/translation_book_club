Rails.application.routes.draw do
  root to: "pages#home"

  resources :publishers
  resources :languages
  resources :books
  resources :authors
  resources :members
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
