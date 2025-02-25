Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'hello/index' => 'hello#index'
  get 'hello/link' => 'hello#link'
 
  resources :tweets do
    resources :likes, only: [:create, :destroy]
  end

  root 'tweets#index' 

end
