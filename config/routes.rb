Rails.application.routes.draw do
  
  get 'password_resets/new'
  get 'password_resets/edit'
  get 'sessions/new'
  get 'users/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #root 'application#hello'
  #root 'static_pages#home'
  #root 'static_pages#home'
  #get  'static_pages/home'
  #get  'static_pages/help'
  #get  'static_pages/about'
  #get  'static_pages/contact'
    root 'static_pages#home'
    get  '/help',    to: 'static_pages#help', as: 'helf'
    #get  '/help',    to: 'static_pages#help'
    get  '/about',   to: 'static_pages#about'
    get  '/contact', to: 'static_pages#contact'
    get  '/signup',  to: 'users#new'
    get    '/login',   to: 'sessions#new'
    post   '/login',   to: 'sessions#create'
    delete '/logout',  to: 'sessions#destroy'
    post '/signup',  to: 'users#create'
    resources :users do
      member do
        get :following, :followers
      end
    end
    resources :users
    resources :account_activations, only: [:edit]
    resources :password_resets,     only: [:new, :create, :edit, :update]
    resources :microposts,          only: [:create, :destroy]
    resources :relationships,       only: [:create, :destroy]
  end
