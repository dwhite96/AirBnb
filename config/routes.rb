Rails.application.routes.draw do

  resources :booking_requests

get 'welcome/index'

devise_for :users

resources :users
resources :listings

root 'welcome#index'

end
