json.array!(@activities) do |activity|
  json.extract! activity, :id, :exercise_id, :intensity_id, :duration, :distance, :date, :description
  json.url activity_url(activity, format: :json)
end
