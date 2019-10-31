class Os::Servicio < ApplicationRecord
  self.table_name = "os_servicios"
  has_many :OrdenServicios, :class_name => "Os::OrdenServicio", :foreign_key => "orden_servicio_id"

end
