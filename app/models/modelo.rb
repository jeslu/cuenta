class Modelo < ApplicationRecord
  self.table_name = "modelos"
  has_many :Equipos, :class_name => "Os::Equipo", :foreign_key => "modelo_id"

end
