Rails.application.routes.draw do
  resources :usertags
  resources :tags
  resources :matches
  resources :messages
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end

# namespace :api do
#   namespace :v1 do
#     post '/auth', to: 'auth#create'
#       get '/current_user', to: 'auth#show'
