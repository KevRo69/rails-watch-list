Rails.application.routes.draw do
  get 'lists/index'
  get 'lists/show'
  get 'lists/new'
  get 'lists/create'
  get "up" => "rails/health#show", as: :rails_health_check

  resources :lists, only: [:index, :show, :new, :create]
end
