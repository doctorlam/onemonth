json.array!(@claims) do |claim|
  json.extract! claim, :id, :explanation
  json.url claim_url(claim, format: :json)
end
