Rails.application.routes.draw do

  # resources :homes
  devise_for :user, :path => '', :path_names => { :sign_in => "sign_in", :sign_out => "sign_out", :sign_up => "sign_up" }
  root to: 'home#index'
  resources :tickets
  resources :seats
  resources :screens
  resources :shows
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
