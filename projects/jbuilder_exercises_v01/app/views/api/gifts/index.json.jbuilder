json.array! @gifts do |gift|
  json.partial! "api/gifts/gift", gift: gift
end

# We query for all of the gifts from a singular guest
# Use of json.array! which takes an array as a argument and then iterates over it:
# Does not give a key name to returned array, only returns an array:

# [
#   {
#     "title": "A Bottle of Wine",
#     "description": "This one is not so great."
#   },
#   {
#     "title": "Another Bottle of Wine",
#     "description": "This one is not so bad."
#   }
# ]

# Use of partial as well passing in the current gift