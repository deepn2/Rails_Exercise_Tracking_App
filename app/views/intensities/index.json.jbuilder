json.array!(@intensities) do |intensity|
  json.extract! intensity, :id, :intensity, :description
  json.url intensity_url(intensity, format: :json)
end
