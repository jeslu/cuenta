class Marca < ApplicationRecord
 self.table_name = "marcas"
  has_many :Equipos, :class_name => "Os::Equipo", :foreign_key => "marca_id"
end
