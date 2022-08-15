json.array! @companies do |company|
  json.(company, :id, :name, :email, :phone_number, :created_at, :updated_at)
end