Rails.application.routes.draw do

  get 'users/index'

  get 'users/show'
	
  devise_for :users
  resources :users
  devise_scope :user do 
    authenticated :user do 
      root 'users#index', as: :authenticated_root
    end

    unauthenticated do 
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end 

  resource :friendships, only: [:create]
end
