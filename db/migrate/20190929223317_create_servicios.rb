class CreateServicios < ActiveRecord::Migration[5.1]
  def change
    create_table :servicios do |t|
      t.string :servicio
      t.decimal :costo
      t.text :descripcion

      t.timestamps
    end
  end
end
