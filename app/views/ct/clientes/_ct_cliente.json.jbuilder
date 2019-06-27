json.extract! ct_cliente, :id, :nombre, :telefono, :direccion, :created_at, :updated_at
json.url ct_cliente_url(ct_cliente, format: :json)
