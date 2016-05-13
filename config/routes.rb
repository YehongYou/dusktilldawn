Rails.application.routes.draw do

  get '/' => 'home#index'
  get '/' => 'users#index'
  get '/near_you' => 'events#near_you'

  get '/contact' => 'home#contact'

  post '/sessions' => 'sessions#create'
  delete '/sessions' => 'sessions#destroy'
# ================ normal controllers =====================
    resources :events
    get '/research' => 'events#search_event'
    resources :users   #read documentation on how this works
    resources :likes
    resources :artists
    resources :user_types
    resources :comments
    resources :genres
    resources :venues

# ================ api controllers return JSON=====================
  namespace :api do
    resources :events
    resources :users   #read documentation on how this works
    resources :likes
    resources :artists
    resources :user_types
    resources :comments
    resources :genres
    resources :venues
  end

end
