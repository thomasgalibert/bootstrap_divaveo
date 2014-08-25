json.array!(@companies) do |company|
  json.extract! company, :id, :name, :number, :street, :zipcode, :town, :country, :email, :tel, :fax, :iban, :bic
  json.url company_url(company, format: :json)
end
