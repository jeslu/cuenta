json.extract! producto_marca, :id, :marca, :activo, :created_at, :updated_at
json.url producto_marca_url(producto_marca, format: :json)
