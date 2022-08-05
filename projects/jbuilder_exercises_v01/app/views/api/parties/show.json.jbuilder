json.partial! "api/parties/party", party: @party
json.guests @party.guests do |guest|
  json.name guest.name
  json.gifts guest.gifts, :title
end

# Use of json partial with correct path for partial "api/parties/party"
# We then pass in the queried @party object as party

# We then also include all of the guests under a key of 'guests'
# Notice here we set a json key of 'guests' that points to an array of guest objects:
# We create the array by taking the queried party's guests and for each one, setting its name under a respective key
# We also set a key of gifts for each guest and then grab that guest's gifts and pull out their titles

# {
#   "name": "Secret Santa Extravaganza",
#   "location": "Portland",
#   "guests": [
#     {
#       "name": "John Smith",
#       "gifts": [
#         {
#           "title": "A Bottle of Wine"
#         },
#         {
#           "title": "Another Bottle of Wine"
#         }
#       ]
#     },
#     {
#       "name": "Jane Doe",
#       "gifts": [
#         {
#           "title": "The Hunger Games"
#         }
#       ]
#     },
#     {
#       "name": "Josh Brown",
#       "gifts": [
#         {
#           "title": "Baseball Glove"
#         },
#         {
#           "title": "Basketball Tickets"
#         }
#       ]
#     },
#     {
#       "name": "Helen White",
#       "gifts": [
#         {
#           "title": "Hawaiian Getaway"
#         }
#       ]
#     },
#     {
#       "name": "Job Bluth",
#       "gifts": []
#     }
#   ]
# }