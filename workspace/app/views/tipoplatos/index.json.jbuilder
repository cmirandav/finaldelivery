json.array!(@tipoplatos) do |tipoplato|
  json.extract! tipoplato, :id, :destipplato
  json.url tipoplato_url(tipoplato, format: :json)
end
