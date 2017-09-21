json.array!(@users) do |user|
  json.extract! user, :id, :firstname, :lastname, :username, :password_digest, :email, :phone, :role
  json.url user_url(user, format: :json)
end
