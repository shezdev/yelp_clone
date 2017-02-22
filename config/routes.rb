

Rails.application.routes.draw do
  root "restaurants#index"
  devise_for :users
  resources :restaurants do
    resources :reviews
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'restaurants' => 'restaurants#index'
end
