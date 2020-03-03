class CreateProductoCategorias < ActiveRecord::Migration[5.1]
  def change
    create_table :producto_categorias do |t|
      t.string :categoria
      t.boolean :activo

      t.timestamps
    end
  end
end
