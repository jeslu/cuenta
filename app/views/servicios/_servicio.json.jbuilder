json.extract! servicio, :id, :servicio, :costo, :descripcion, :created_at, :updated_at
json.url servicio_url(servicio, format: :json)
