Rails.application.routes.draw do
  root "site#index"
  devise_for :admins
  resources :admins
  resources :users do
    resources :cars
    resources :appointments
  end
  resources :appointments
post "search" => "site#search"
end
