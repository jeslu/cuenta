Rails.application.routes.draw do


  namespace :ct do
      resources :clientes
          resources :producto_umedidas
            resources :producto_marcas
             resources :producto_categorias
               resources :producto_catalogos
  end


  root to: 'index#index'
  devise_for :users
  #get 'index/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
