Rails.application.routes.draw do

  resources :booking_requests

get 'welcome/index'

devise_for :users

resources :users
resources :listings do
  resources :booking_requests
end

root 'welcome#index'

end
