json.array!(@users) do |user|
  json.extract! user, :id, :company_id, :name, :firstname, :email, :role, :sexe, :password_digest
  json.url user_url(user, format: :json)
end
