class Os::ServicioOrden < ApplicationRecord
  self.table_name = "os_servicio_ordens"
  belongs_to :Servicio, :class_name => "Os::Servicio", :foreign_key => "servicio_id"
  belongs_to :OrdenServicio, :class_name => "Os::OrdenServicio", :foreign_key => "orden_servicio_id"






end
