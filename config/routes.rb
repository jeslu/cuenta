Rails.application.routes.draw do
  
  root to: 'index#index'
  devise_for :users
  #get 'index/index'

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
