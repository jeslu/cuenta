class Producto::Catalogo < ApplicationRecord
  self.table_name = "producto_catalogos"

    has_many :CuentaCotizacions, :class_name => "Ct::CuentaCotizacion", :foreign_key => "producto_id"
    belongs_to  :Categoria,   :class_name => "Producto::Categoria",  :foreign_key => "categoria_id"
    belongs_to :Medida, :class_name => "Producto::Umedida", :foreign_key => "umedida_id"
    belongs_to :Marca, :class_name => "Producto::Marca", :foreign_key => "marca_id"
    belongs_to :User, :class_name => "User", :foreign_key => "user_id"

end
