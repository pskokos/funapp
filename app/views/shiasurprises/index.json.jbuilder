json.array!(@shiasurprises) do |shiasurprise|
  json.extract! shiasurprise, :id, :name, :amount
  json.url shiasurprise_url(shiasurprise, format: :json)
end
