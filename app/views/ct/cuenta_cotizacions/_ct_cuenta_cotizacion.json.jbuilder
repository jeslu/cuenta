json.extract! ct_cuenta_cotizacion, :id, :fecha, :activo, :cuenta_cliente_id, :producto_id, :cantidad, :total, :created_at, :updated_at
json.url ct_cuenta_cotizacion_url(ct_cuenta_cotizacion, format: :json)
