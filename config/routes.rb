Rails.application.routes.draw do
devise_for :users

devise_scope :user do  
   get '/users/sign_out' => 'devise/sessions#destroy'     
end
    
  get 'welcome/index'
    
  resources :articles

  root 'welcome#index'
    
  get "/pages/:page" => "pages#show"
    
end
