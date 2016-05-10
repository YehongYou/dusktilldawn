Rails.application.routes.draw do

  get '/' => 'home#index'

  #=========== venue part ============


  resources :events
  resources :users   #read documentation on how this works
  resources :likes
  resources :artists
  resources :user_types
  resources :comments
  resources :genres
  resources :venues


  namespace :api do
    resources :events #read documentation on how this works
    resources :artists
    resources :genres
  end
end
