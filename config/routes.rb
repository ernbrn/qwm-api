Rails.application.routes.draw do
  devise_for :users, defaults: { format: :json }, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords: 'users/passwords'
  }
  resources :ratings
  resources :reviews
  resources :references
  resources :creators
  resources :works
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
