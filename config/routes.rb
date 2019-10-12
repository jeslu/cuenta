Rails.application.routes.draw do

namespace :os do
      resources :servicios
      resources :tipo_equipos
      resources :equipos
      resources :orden_servicios
  end

  resources :modelos
  resources :marcas
  resources :clientes do
    #match 'orden_servicios',  to: 'clientes#orden_servicios', via: [:get]
    #match 'orden_servicios',  to: 'clientes#create_orden_servicio', via: [:post]
  end


  namespace :ct do
    resources :cuenta
  end

  namespace :ct do
            resources :producto_umedidas
            resources :producto_marcas
             resources :producto_categorias
               resources :producto_catalogos
                 resources :cuentas
  end


  root to: 'index#index'
  devise_for :users
  #get 'index/index'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
