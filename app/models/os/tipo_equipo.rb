class Os::TipoEquipo < ApplicationRecord
  self.table_name = "os_tipo_equipos"
  has_many :Equipo, :class_name => "Os::Equipo", :foreign_key => "tipo_equipo_id"

end
