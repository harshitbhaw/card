Rails.application.routes.draw do
  devise_for :users
  root to: 'cards#index'
  # resources :credits
  # resources :debits
  
  authenticated :user do
    resources :credits do
      resources :billings
    end
    resources :debits do
      resources :billings
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
