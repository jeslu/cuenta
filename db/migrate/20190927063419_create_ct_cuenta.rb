class CreateCtCuenta < ActiveRecord::Migration[5.1]
  def change
    create_table :ct_cuenta do |t|
      t.bigint :cliente_id
      t.datetime :fecha
      t.boolean :activo

      t.timestamps
    end
  end
end
