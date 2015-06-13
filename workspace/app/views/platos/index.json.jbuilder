json.array!(@platos) do |plato|
  json.extract! plato, :id, :fecha, :nomplato, :cantidad
  json.url plato_url(plato, format: :json)
end
