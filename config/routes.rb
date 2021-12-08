Rails.application.routes.draw do
  devise_for :user
  root :to =>"projects#index"
  resources :projects
end

