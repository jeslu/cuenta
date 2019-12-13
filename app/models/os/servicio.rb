class Os::Servicio < ApplicationRecord
  self.table_name = "os_servicios"

  has_many :ServicioOrdens, :class_name => "Os::ServicioOrden", :foreign_key => "servicio_id"
  has_many :OrdenServicios, :through => :ServicioOrdens



end
