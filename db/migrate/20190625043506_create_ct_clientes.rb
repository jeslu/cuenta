class CreateCtClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :ct_clientes do |t|
      t.string :nombre
      t.string :telefono
      t.string :direccion

      t.timestamps
    end
  end
end
