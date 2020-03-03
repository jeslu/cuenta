class CreateProductoModelos < ActiveRecord::Migration[5.1]
  def change
    create_table :producto_modelos do |t|
      t.string :modelo
      t.boolean :activo

      t.timestamps
    end
  end
end
