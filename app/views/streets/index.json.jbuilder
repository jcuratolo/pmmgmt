json.array!(@streets) do |street|
  json.extract! street, :id, :name, :treetype
  json.url street_url(street, format: :json)
end
