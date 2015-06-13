json.array!(@ciudads) do |ciudad|
  json.extract! ciudad, :id, :nomciudad
  json.url ciudad_url(ciudad, format: :json)
end
