Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :posts
  root 'posts#index'

  #post ':user_registration(:users(.:format)'
  post ':controller(/:action(/:id(.:format)))'
  get ':controller(/:action(/:id(.:format)))'
  root 'posts#index', as: 'home'
  get 'about' => 'pages#about', as:'about'
  resources :posts do
    resources :comments
  end
end


