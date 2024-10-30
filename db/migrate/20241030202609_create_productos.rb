class CreateProductos < ActiveRecord::Migration[7.2]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descripcion
      t.decimal :precio
      t.integer :stock
      t.references :categoria, null: false, foreign_key: true
      t.references :proveedor, null: false, foreign_key: true
      t.date :fecha_creacion

      t.timestamps
    end
  end
end
