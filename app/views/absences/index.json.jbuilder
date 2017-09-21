json.array!(@absences) do |absence|
  json.extract! absence, :id, :user_id, :reporter_id, :date_from, :date_to, :reason
  json.url absence_url(absence, format: :json)
end
