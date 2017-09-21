json.array!(@timetable_entries) do |timetable_entry|
  json.extract! timetable_entry, :id, :timetable_id, :lesson_id, :start, :finish
  json.url timetable_entry_url(timetable_entry, format: :json)
end
