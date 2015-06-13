json.array!(@horaentregas) do |horaentrega|
  json.extract! horaentrega, :id, :deshora
  json.url horaentrega_url(horaentrega, format: :json)
end
