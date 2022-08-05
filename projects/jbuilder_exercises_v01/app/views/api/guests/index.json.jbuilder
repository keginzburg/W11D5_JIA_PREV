json.array! @guests do |guest|
  if guest.age > 40 && guest.age < 50
    json.name guest.name
    json.age guest.age
    json.favorite_color guest.favorite_color
  end
end

# We query for all of our guests
# Use of json.array! which takes an array as an argument and then iterates over it:
# Does not give a key name to returned array, only returns an array.
# Also note use of if conditional inside to only set name/age/favourite keys and respective values for guests that fulfill conditional: 

# [
#   {
#     "name": "John Smith",
#     "age": 45,
#     "favorite_color": "Blue"
#   },
#   {
#     "name": "Jane Doe",
#     "age": 47,
#     "favorite_color": "Green"
#   },
#   {
#     "name": "Job Bluth",
#     "age": 41,
#     "favorite_color": "Red"
#   }
# ]
