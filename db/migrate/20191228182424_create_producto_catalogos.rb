class CreateProductoCatalogos < ActiveRecord::Migration[5.1]
  def change
    create_table :producto_catalogos do |t|
      t.bigint :categoria_id
      t.bigint :umedida_id
      t.bigint :marca_id
      t.string :barcode
      t.text :descripcion
      t.string :nombre
      t.bigint :user_id

      t.timestamps
    end
  end
end
