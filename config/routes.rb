Rails.application.routes.draw do
  resources :userchoices
  resources :polls
  get 'users/:id', to: 'users#index'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get    '/signup',  to: 'users#new'
  resources :users
  #patch '/answerchoices/:id/vote', to: 'answerchoices#vote'
  resources :polls do
    member do
      patch 'pvote'
    end
  end
  resources :answerchoices do
    member do
      patch 'vote'
    end
  end
  resources :questions
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'polls#index'
end
