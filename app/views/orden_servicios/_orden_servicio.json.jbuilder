json.extract! orden_servicio, :id, :user_id, :cliente_id, :servicio_id, :equipo_id, :created_at, :updated_at
json.url orden_servicio_url(orden_servicio, format: :json)
