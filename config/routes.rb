Rails.application.routes.draw do
  resources :listings

get 'welcome/index'

devise_for :users

resources :users

root 'welcome#index'

end
