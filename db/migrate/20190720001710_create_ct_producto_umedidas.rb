class CreateCtProductoUmedidas < ActiveRecord::Migration[5.1]
  def change
    create_table :ct_producto_umedidas do |t|
      t.string :medida
      t.boolean :activo

      t.timestamps
    end
  end
end
