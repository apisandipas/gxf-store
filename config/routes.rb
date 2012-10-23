GxfWebsite::Application.routes.draw do
  

  mount RedactorRails::Engine => '/redactor_rails'

  # resources :posts, only: [:index, :show]
  

 
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
 
  resources :sessions
  

  namespace :admin do
    get '', to: 'dashboard#index', as: '/'
    resources :posts
    resources :users
    resources :pages
  end


  root :to => 'site#index'

  match '/blog' => 'posts#index', as: :posts
  match '/blog/:id' => 'posts#show', as: :post #_permalink
  # get 'posts\:id', to: 'posts#show', as: :post
  get ':id', to: 'pages#show', as: :page
end
