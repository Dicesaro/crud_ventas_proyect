json.extract! factura, :id, :pedido_id, :numero_factura, :fecha_emision, :total, :iva, :descuento, :created_at, :updated_at
json.url factura_url(factura, format: :json)
