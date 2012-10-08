GxfWebsite::Application.routes.draw do
 
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
 
  resources :sessions
  resources :users

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
  end

  root :to => 'site#index'

end
