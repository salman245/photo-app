Rails.application.routes.draw do
  resources :images
  devise_for :users, :controllers => {:registration => 'registration'}
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
