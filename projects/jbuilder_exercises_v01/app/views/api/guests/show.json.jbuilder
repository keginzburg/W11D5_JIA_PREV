json.partial! "api/guests/guest", guest: @guest

json.gifts @guest.gifts.each do |gift|
  json.title gift.title
  json.description gift.description
end

# Use of json partial with correct path for partial "api/guests/guest"

# We then also include all of a guest's gifts:
# Notice here we set a json key of 'gifts' that points to an array of gift objects:
# We create the array by taking the queried guest's gifts and for each one, setting its title and description under respective keys:

# {
#   "name": "John Smith",
#   "age": 45,
#   "favorite_color": "Blue",
#   "gifts": [
#     {
#       "title": "A Bottle of Wine",
#       "description": "This one is not so great."
#     },
#     {
#       "title": "Another Bottle of Wine",
#       "description": "This one is not so bad."
#     }
#   ]
# }