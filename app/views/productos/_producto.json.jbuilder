json.extract! producto, :id, :nombre, :descripcion, :precio, :stock, :categoria_id, :proveedor_id, :fecha_creacion, :created_at, :updated_at
json.url producto_url(producto, format: :json)
