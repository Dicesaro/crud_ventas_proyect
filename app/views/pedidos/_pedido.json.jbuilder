json.extract! pedido, :id, :cliente_id, :producto_id, :cantidad, :total, :fecha_pedido, :estado, :created_at, :updated_at
json.url pedido_url(pedido, format: :json)
