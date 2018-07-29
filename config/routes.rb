Rails.application.routes.draw do

  resources :users
  get  'home/about' => 'home#about'
  resources :posts 
  get  '/result'    => 'posts#result'
  post '/result'    => 'posts#result'
  root :to          => 'posts#index'

end
