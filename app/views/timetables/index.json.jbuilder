json.array!(@timetables) do |timetable|
  json.extract! timetable, :id, :name
  json.url timetable_url(timetable, format: :json)
end
