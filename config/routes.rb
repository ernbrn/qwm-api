Rails.application.routes.draw do
  resources :collection_works
  resources :collections
  resources :interest_list_works
  resources :interest_lists
  resources :work_types
  resources :links
  resources :favorites
  devise_for :users, defaults: { format: :json }
  resources :ratings
  resources :reviews
  resources :references
  resources :creators
  resources :works
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
