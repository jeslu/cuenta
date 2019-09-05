json.extract! ct_producto_catalogo, :id, :categoria_id, :umedida_id, :marca_id, :barcode, :descripcion, :json, :nombre, :user_id, :created_at, :updated_at
json.url ct_producto_catalogo_url(ct_producto_catalogo, format: :json)
