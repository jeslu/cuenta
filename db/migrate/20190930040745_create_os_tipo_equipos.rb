class CreateOsTipoEquipos < ActiveRecord::Migration[5.1]
  def change
    create_table :os_tipo_equipos do |t|
      t.string :tipo
      t.boolean :activo

      t.timestamps
    end
  end
end
