# frozen_string_literal: true

Rails.application.routes.draw do
  resources :collection_works
  resources :interest_list_works
  resources :work_types
  devise_for :users, defaults: { format: :json }

  resources :creators, shallow: true do
    resources :works
    resources :links
    resources :references
  end

  resources :works, shallow: true do
    resources :creators
    resources :links
    resources :references
  end

  resources :users, shallow: true do
    resources :reviews
    resources :ratings
    resources :interest_lists
    resources :favorites
    resources :collections
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
