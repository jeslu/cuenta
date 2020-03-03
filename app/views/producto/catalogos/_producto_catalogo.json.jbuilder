json.extract! producto_catalogo, :id, :categoria_id, :umedida_id, :marca_id, :barcode, :descripcion, :nombre, :user_id, :created_at, :updated_at
json.url producto_catalogo_url(producto_catalogo, format: :json)
