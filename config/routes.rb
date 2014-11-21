Rails.application.routes.draw do

devise_for :users

resources :users
resources :listings do
  resources :booking_requests
end

root 'welcome#index'

end
