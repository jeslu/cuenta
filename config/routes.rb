Rails.application.routes.draw do


  resources :orden_servicios
  resources :servicios
  resources :equipos
  resources :tipo_equipos
  resources :modelos
  resources :marcas
  resources :clientes
  namespace :ct do
    resources :cuentas
  end
  namespace :ct do
    resources :cuenta
  end
  namespace :ct do
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
