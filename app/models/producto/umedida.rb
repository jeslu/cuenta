class Producto::Umedida < ApplicationRecord
  self.table_name = "producto_umedidas"

has_many :Catalogos, :class_name => "Producto::Catalogo", :foreign_key => "umedida_id"

end
