Rails.application.routes.draw do

  resources :cocktails, only: [:index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]

  # get 'cocktails', to: 'cocktails#index'
  # get 'cocktails/:id', to: 'cocktails#show', as: 'details'
  # get 'cocktails/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
