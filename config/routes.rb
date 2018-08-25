Rails.application.routes.draw do
  get 'page/index'
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
  	namespace :v1 do
  		resources :users, only: [:index]
  	end
  end	
  
  root to: "page#index"
end
