json.array!(@shoes) do |shoe|
  json.extract! shoe, :id, :shoe, :brand, :bought
  json.url shoe_url(shoe, format: :json)
end
