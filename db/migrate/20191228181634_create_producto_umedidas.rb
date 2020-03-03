class CreateProductoUmedidas < ActiveRecord::Migration[5.1]
  def change
    create_table :producto_umedidas do |t|
      t.string :medida
      t.boolean :activo

      t.timestamps
    end
  end
end
