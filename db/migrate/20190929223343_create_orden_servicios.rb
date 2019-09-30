class CreateOrdenServicios < ActiveRecord::Migration[5.1]
  def change
    create_table :orden_servicios do |t|
      t.references :user, foreign_key: true
      t.references :cliente, foreign_key: true
      t.references :servicio, foreign_key: true
      t.references :equipo, foreign_key: true

      t.timestamps
    end
  end
end
