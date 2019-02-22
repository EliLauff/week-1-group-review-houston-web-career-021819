## QUESTION 1

pokemon = [
  {
    "id": 1,
    "name": "bulbasaur",
    "base_experience": 64,
    "height": 7,
    "is_default": true,
    "order": 1,
    "weight": 69,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "chlorophyll",
                "url": "http://pokeapi.co/api/v2/ability/34/"
            }
        }
    ]
},
{
    "id": 3,
    "name": "venesaur",
    "base_experience": 50,
    "height": 10,
    "is_default": true,
    "order": 1,
    "weight": 90,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "fire",
                "url": "http://pokeapi.co/api/v2/ability/38/"
            }
        }
    ]
},
{
    "id": 2,
    "name": "pikachu",
    "base_experience": 60,
    "height": 4,
    "is_default": true,
    "order": 1,
    "weight": 37,
    "abilities": [
        {
            "is_hidden": true,
            "slot": 3,
            "ability": {
                "name": "lightning",
                "url": "http://pokeapi.co/api/v2/ability/30/"
            }
        }
    ]
}
]

answer1 = pokemon[0][:abilities][0][:ability][:url]
puts answer1

def first_experienced_pokemon(pokemon)
    pokemon.find do |pokemon|
        pokemon[:base_experience] > 40
    end
end
answer2 = first_experienced_pokemon(pokemon)
puts answer2

def all_experienced_pokemon(pokemon)
    pokemon.find_all do |pokemon|
        pokemon[:base_experience] > 40
    end
end
answer3 = all_experienced_pokemon(pokemon)
puts answer3

def all_names(pokemon)
    pokemon.map do |pokemon|
        pokemon[:name]
    end
end
answer4 = all_names(pokemon)
puts answer4

def has_heavy_pokemon?(pokemon)
    pokemon.any? do |pokemon|
        pokemon[:weight] > 60
    end
end
answer5 = has_heavy_pokemon?(pokemon)
puts answer5




# How would you get the url for Bulbasaur's ability?
# How would you return the first pokemon with base experience over 40?
# How would you return ALL OF THE pokemon with base experience over 40? (Gotta catch em all)
# How would you return an array of all of the pokemon's names?
# How would you determine whether or not the pokemon array contained any pokemon with a weight greater than 60?
#  whatever method you use should return true if there are any such pokemon, false if not.
