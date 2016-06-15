Rails.application.routes.draw do
  resources :articles, :searches
  root 'welcome#index'
end
