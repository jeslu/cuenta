class Ct::ProductoUmedida < ApplicationRecord
  self.table_name = "ct_producto_umedidas"

  has_many :Catalogos, :class_name => "Ct::ProductoCatalogo",  :foreign_key => "umedida_id"
end
