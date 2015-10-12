json.array!(@girls_parties) do |girls_party|
  json.extract! girls_party, :id, :rsvp, :venue, :date
  json.url girls_party_url(girls_party, format: :json)
end
