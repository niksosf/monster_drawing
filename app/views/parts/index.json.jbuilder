json.array!(@parts) do |part|
  json.extract! part, :id, :name, :img
  json.url part_url(part, format: :json)
end
