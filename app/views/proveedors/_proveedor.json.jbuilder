json.extract! proveedor, :id, :nombre, :contacto, :email, :telefono, :direccion, :fecha_registro, :created_at, :updated_at
json.url proveedor_url(proveedor, format: :json)
