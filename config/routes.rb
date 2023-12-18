Rails.application.routes.draw do
  devise_for :users
  
  get 'jiros/index' 
  get 'maps/index'

  resources :maps, only: [:index]
 
  resources :posts do
   resources :kutikomis, only: [:create]
   resources :likes, only: [:create, :destroy]
  end
  
  resources :users, only: [:index, :show] do    # ユーザーマイページへのルーティング
    member do
      get :likes
    end
  end
  root 'posts#index'
end
