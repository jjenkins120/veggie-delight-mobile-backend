Rails.application.routes.draw do
  resources :usertags
  resources :tags
  resources :matches
  resources :messages
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
