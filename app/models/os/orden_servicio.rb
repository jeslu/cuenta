class Os::OrdenServicio < ApplicationRecord
  self.table_name = "os_orden_servicios"
  belongs_to :User, :class_name => "User", :foreign_key => "user_id"
  belongs_to :Cliente, :class_name => "Cliente", :foreign_key => "cliente_id"
  has_many :ServicioOrden, :class_name => "Os::ServicioOrden", :foreign_key => "orden_servicio_id"
  has_many :Equipos, :class_name => "Os::Equipo", :foreign_key => "orden_servicio_id"

end
