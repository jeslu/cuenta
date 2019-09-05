class CreateCtProductoMarcas < ActiveRecord::Migration[5.1]
  def change
    create_table :ct_producto_marcas do |t|
      t.string :marca
      t.boolean :activo

      t.timestamps
    end
  end
end
