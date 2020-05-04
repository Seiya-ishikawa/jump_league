Rails.application.routes.draw do
  root to: 'comics#index'
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'   
  } 

  devise_scope :user do
    get 'sign_in', to: "users/sessions#new"
    get 'sign_out', to: "users/sessions#destroy" 
  end
  resources :comics, only: :index
  resources :winpoints, only: :new
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
