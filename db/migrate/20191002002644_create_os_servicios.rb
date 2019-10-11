class CreateOsServicios < ActiveRecord::Migration[5.1]
  def change
    create_table :os_servicios do |t|
      t.string :servicio
      t.decimal :costo
      t.text :descripcion

      t.timestamps
    end
  end
end
