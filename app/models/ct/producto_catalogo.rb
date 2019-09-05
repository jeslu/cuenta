class Ct::ProductoCatalogo < ApplicationRecord
    self.table_name = "ct_producto_catalogos"

     belongs_to :User, :class_name => "User" , :foreign_key => "user_id"

       belongs_to :Categoria, :class_name => "Ct::ProductoCategoria", :foreign_key => "categoria_id"
       belongs_to :Marca,    :class_name => "Ct::ProductoMarca",     :foreign_key => "marca_id"
       belongs_to :Umedida, :class_name => "Ct::ProductoUmedida",   :foreign_key => "umedida_id"

end
