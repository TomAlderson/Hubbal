json.array!(@rooms) do |room|
  json.extract! room, :id, :number, :building
  json.url room_url(room, format: :json)
end
