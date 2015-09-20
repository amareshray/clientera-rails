json.array!(@emails) do |email|
  json.extract! email, :id, :email_name, :subject, :from_name, :from_email, :body
  json.url email_url(email, format: :json)
end
