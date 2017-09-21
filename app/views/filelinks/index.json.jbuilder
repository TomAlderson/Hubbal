json.array!(@filelinks) do |filelink|
  json.extract! filelink, :id, :content_id, :link, :size, :type
  json.url filelink_url(filelink, format: :json)
end
