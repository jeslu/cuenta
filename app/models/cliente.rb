class Cliente < ApplicationRecord
  self.table_name = "clientes"
  has_many :Ordenservicios, :class_name => "Os::OrdenServicio", :foreign_key => "cliente_id"
end
