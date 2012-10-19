GxfWebsite::Application.routes.draw do
  
  mount RedactorRails::Engine => '/redactor_rails'

  resources :posts, only: [:index, :show]

 
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
 
  resources :sessions
  

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :posts
    resources :users
  end

  root :to => 'site#index'

end
