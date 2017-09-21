json.array!(@courses) do |course|
  json.extract! course, :id, :title, :teacher_id, :description
  json.url course_url(course, format: :json)
end
