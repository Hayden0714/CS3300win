Rails.application.routes.draw do
  devise_for :users
  root "projects#index"
  resources :projects

  devise_scope :user do
    get "/home", :to => "devise/sessions#new", :as => :home 
    post "/users/sign_up", :to => "devise/sessions#create", :as => :sign_up
  end
end

