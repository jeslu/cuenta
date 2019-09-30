class CreateClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido_p
      t.string :apellido_m
      t.string :direccion
      t.string :telefono
      t.boolean :activo

      t.timestamps
    end
  end
end
