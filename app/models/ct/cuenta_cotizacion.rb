class Ct::CuentaCotizacion < ApplicationRecord
  self.table_name = "ct_cuenta_cotizacions"

  belongs_to :CuentaCliente, :class_name => "Ct::CuentaCliente", :foreign_key => "cuenta_cliente_id"
  belongs_to :Producto, :class_name => "Producto::Catalogo", :foreign_key => "producto_id"



end
