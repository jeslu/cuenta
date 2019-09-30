class CreateMarcas < ActiveRecord::Migration[5.1]
  def change
    create_table :marcas do |t|
      t.string :marca
      t.boolean :activo

      t.timestamps
    end
  end
end
