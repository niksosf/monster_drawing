json.array!(@parts) do |part|
  json.extract! part, :id, :name, :img, :other_parts
  json.url part_url(part, format: :json)
end
