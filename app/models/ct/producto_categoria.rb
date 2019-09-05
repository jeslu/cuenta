class Ct::ProductoCategoria < ApplicationRecord
  self.table_name = "ct_producto_categorias"
  has_many :Catalogos, :class_name => "Ct::ProductoCatalogo", :foreign_key => "categoria_id"
end
