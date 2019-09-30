class CreateEquipos < ActiveRecord::Migration[5.1]
  def change
    create_table :equipos do |t|
      t.string :n_serie
      t.references :marca, foreign_key: true
      t.references :modelo, foreign_key: true
      t.references :tipo_equipo, foreign_key: true

      t.timestamps
    end
  end
end
