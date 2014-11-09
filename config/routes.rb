Rails.application.routes.draw do

get 'welcome/index'

devise_for :users

resources :users
resources :listings

root 'welcome#index'

end
