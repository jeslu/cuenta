class CreateOsServicioOrdens < ActiveRecord::Migration[5.1]
  def change
    create_table :os_servicio_ordens do |t|
      t.bigint :orden_servicio_id
      t.bigint :servicio_id

      t.timestamps
    end
  end
end
