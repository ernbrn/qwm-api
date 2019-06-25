Rails.application.routes.draw do
  resources :ratings
  resources :reviews
  resources :references
  resources :creators
  resources :works
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
