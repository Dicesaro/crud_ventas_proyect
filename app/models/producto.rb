class Producto < ApplicationRecord
  belongs_to :categoria, class_name: "Categoria"
  belongs_to :proveedor
end
