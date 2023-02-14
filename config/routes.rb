Rails.application.routes.draw do
  get 'users/show'
  get 'static_pages/home'
  devise_for :users
  resources :cloths
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
