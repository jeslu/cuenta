class CreateCtCuentaCotizacions < ActiveRecord::Migration[5.1]
  def change
    create_table :ct_cuenta_cotizacions do |t|
      t.datetime :fecha
      t.boolean :activo
      t.bigint :cuenta_cliente_id
      t.bigint :producto_id
      t.integer :cantidad
      t.decimal :total

      t.timestamps
    end
  end
end
