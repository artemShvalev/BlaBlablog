Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
 

  resources :posts
  resources :posts do
    resources :comments
  end
  resources :users, only: [:new, :create]

  root 'posts#index', as:('home')
  get 'about' => 'pages#about', as:'about'
  get '/auth/:facebook/callback', to: 'sessions#create'
end
