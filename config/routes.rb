Rails.application.routes.draw do
  namespace :api do
  namespace :v1 do
    resources :users
    post '/login', to: 'auth#create'
    get '/current_user', to: "auth#show"
    get '/profile', to: 'users#profile'
    resources :favorites
  end
end
end
