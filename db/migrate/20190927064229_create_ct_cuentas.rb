class CreateCtCuentas < ActiveRecord::Migration[5.1]
  def change
    create_table :ct_cuentas do |t|
      t.bigint :cliente_id
      t.datetime :fecha
      t.boolean :activo

      t.timestamps
    end
  end
end
