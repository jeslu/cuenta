class CreateTipoEquipos < ActiveRecord::Migration[5.1]
  def change
    create_table :tipo_equipos do |t|
      t.string :tipo
      t.boolean :activo

      t.timestamps
    end
  end
end
