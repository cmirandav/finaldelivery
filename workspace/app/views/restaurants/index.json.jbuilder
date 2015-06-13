json.array!(@restaurants) do |restaurant|
  json.extract! restaurant, :id, :nombre, :direcc, :resena, :correo
  json.url restaurant_url(restaurant, format: :json)
end
