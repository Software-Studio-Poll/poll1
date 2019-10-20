Rails.application.routes.draw do
  resources :answerchoices do
    member do
      patch 'increment'
    end
  end
  resources :questions
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'questions#index'
end
