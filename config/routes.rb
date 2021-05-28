Rails.application.routes.draw do
  
  devise_for :users, :controllers => { :registrations => "registrations", :passwords => "passwords" }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  
  devise_scope :user do
    
  authenticated :user do
    root to: "rails_admin/main#dashboard", as: :admin_root
  end
  
  unauthenticated do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end 
resources :users
end
