Rails.application.routes.draw do
  resources :url_lists
  root 'url_lists#index'
end
