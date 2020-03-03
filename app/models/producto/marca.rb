class Producto::Marca < ApplicationRecord
  self.table_name = "producto_marcas"

  has_many :Catalogos, :class_name => "Producto::Catalogo", :foreign_key => "marca_id"
end
