class CreateProductoMarcas < ActiveRecord::Migration[5.1]
  def change
    create_table :producto_marcas do |t|
      t.string :marca
      t.boolean :activo

      t.timestamps
    end
  end
end
