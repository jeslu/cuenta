class CreateOsEquipos < ActiveRecord::Migration[5.1]
  def change
    create_table :os_equipos do |t|
      t.string :n_serie
      t.references :marca, foreign_key: true
      t.references :modelo, foreign_key: true
      t.bigint :tipo_equipo_id

      t.timestamps
    end
  end
end
