class Producto::Categoria < ApplicationRecord
  self.table_name = "producto_categorias"

  has_many :Catalogos, :class_name => "Producto::Catalogo", :foreign_key => "categoria_id"
end
