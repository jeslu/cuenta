Rails.application.routes.draw do


  namespace :os do
    resources :tipo_equipos
  end
  namespace :os do
    resources :orden_servicios
  end
  namespace :os do
    resources :equipos
  end
  namespace :os do
    resources :servicios
  end
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
