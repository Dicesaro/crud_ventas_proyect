class CreateFacturas < ActiveRecord::Migration[7.2]
  def change
    create_table :facturas do |t|
      t.references :pedido, null: false, foreign_key: true
      t.string :numero_factura
      t.date :fecha_emision
      t.decimal :total
      t.decimal :iva
      t.decimal :descuento

      t.timestamps
    end
  end
end
