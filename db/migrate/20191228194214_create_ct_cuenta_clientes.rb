class CreateCtCuentaClientes < ActiveRecord::Migration[5.1]
  def change
    create_table :ct_cuenta_clientes do |t|
      t.bigint :cliente_id
      t.datetime :fecha_c
      t.boolean :activo

      t.timestamps
    end
  end
end
