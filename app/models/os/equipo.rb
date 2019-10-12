class Os::Equipo < ApplicationRecord
  self.table_name = "os_equipos"
  belongs_to :Marca, :class_name => "Marca", :foreign_key => "marca_id"
  belongs_to :Modelo, :class_name => "Modelo", :foreign_key => "modelo_id"
  belongs_to :TipoEquipo, :class_name => "Os::TipoEquipo", :foreign_key => "tipo_equipo_id"

  has_many :OrdenServicios, :class_name => "Os::OrdenServicio", :foreign_key => "equipo_id"

end
