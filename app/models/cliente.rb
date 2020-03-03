class Cliente < ApplicationRecord
  self.table_name = "clientes"
  has_many :OrdenServicios, :class_name => "Os::OrdenServicio", :foreign_key => "cliente_id"
  has_many :Users, :through => :OrdenServicios
  has_many :CuentaClientes, :class_name => " Ct::CuentaCliente", :foreign_key => "cuenta_cliente_id"

end
