Rails.application.routes.draw do
  # get 'login/create'
  resources :messages
  resources :usertags
  resources :tags
  resources :matches
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      post '/auth', to: 'auth#create'
        get '/current_user', to: 'auth#show'
    end
  end

end



