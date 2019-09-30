class CreateOsOrdenServicios < ActiveRecord::Migration[5.1]
  def change
    create_table :os_orden_servicios do |t|
      t.references :user, foreign_key: true
      t.references :cliente, foreign_key: true
      t.bigint :servicio_id
      t.bigint :equipo_id

      t.timestamps
    end
  end
end
