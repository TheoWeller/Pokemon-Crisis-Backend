# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)




# response = RestClient.get "https://pokeapi.co/api/v2/pokemon/?offset=803limit=400"
#
# JSON.parse(response.body)["results"].each do |pokemon|
#
#   r = RestClient.get pokemon["url"]
#   poke = JSON.parse(r.body)
#
#   name = poke["name"]
#   abilities = poke["abilities"].to_s
#   api_id = poke["id"].to_s
#   sprites = poke["sprites"].to_s
#   stats = poke["stats"].to_s
#   types = poke["types"].to_s
#   moves = poke["moves"].to_s
#   base_xp = poke["base_experience"].to_s
#   Pokemon.find_or_create_by(name: name, api_id: api_id, abilities: abilities, sprites: sprites, stats: stats, types: types, moves: moves, base_xp: base_xp).errors
#
# end
