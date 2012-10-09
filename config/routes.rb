GxfWebsite::Application.routes.draw do
 
  resources :posts, only: [:index, :show]

  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
 
  resources :sessions
  resources :users

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :posts
  end

  root :to => 'site#index'

end
