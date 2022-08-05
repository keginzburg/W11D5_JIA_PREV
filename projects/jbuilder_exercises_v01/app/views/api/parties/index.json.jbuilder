json.array! @parties do |party|
  json.partial! "api/parties/party", party: party
  json.guests do
    json.array! party.guests do |guest|
      json.extract! guest, :name
    end
  end
end

# json.array! @parties do |party|
#   json.partial! "api/parties/party", party: party
#   json.guests do
#     json.array! party.guests do |guest|
#       json.extract! guest, :name
#     end
#   end
# end