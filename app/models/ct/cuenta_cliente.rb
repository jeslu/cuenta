class Ct::CuentaCliente < ApplicationRecord
self.table_name = "ct_cuenta_clientes"
belongs_to :User, :class_name => "User", :foreign_key => "user_id"
belongs_to :Cliente, :class_name => "Cliente", :foreign_key => "cliente_id"

has_many :CuentaCotizacions, :class_name => "Ct::CuentaCotizacion", :foreign_key => "cuenta_cliente_id"

def get_total_cotiza
self.CuentaCotizacions.sum(:total)
end


end
