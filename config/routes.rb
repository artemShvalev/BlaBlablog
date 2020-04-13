Rails.application.routes.draw do
  devise_for :users, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :posts
  resources :posts do
    resources :comments
  end
  root 'posts#index', as:('home')
  root 'user_registration#new'
  get ':controller(/:action(/:id(.:format)))'
  get 'about' => 'pages#about', as:'about'
  get  ':controller(/:action(/:users/sign_up(.:format)))' => 'devise/registrations#new'
    #post ':user_registration(/users(.:format)'

  #post ':controller(/:action(/:id(.:format)))'
  #post ':controller(user_registration(/:action(/:id(.:format)))'

end


