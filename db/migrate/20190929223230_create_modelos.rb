class CreateModelos < ActiveRecord::Migration[5.1]
  def change
    create_table :modelos do |t|
      t.string :modelo
      t.boolean :activo

      t.timestamps
    end
  end
end
