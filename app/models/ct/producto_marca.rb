class Ct::ProductoMarca < ApplicationRecord
  self.table_name = "ct_producto_marcas"
   has_many :Catalogos, :class_name => "Ct::ProductoCatalogo", :foreign_key => "marca_id"

end
