Rails.application.routes.draw do
  root to: "events#index"
  get 'static_pages/index'
  get 'static_pages/secret'
  devise_for :users

  resources :events
end
