json.array!(@detpedidos) do |detpedido|
  json.extract! detpedido, :id, :canped
  json.url detpedido_url(detpedido, format: :json)
end
