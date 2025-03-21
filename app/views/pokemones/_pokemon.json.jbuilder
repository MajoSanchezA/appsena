json.extract! pokemon, :id, :nombre, :categoria, :habilidad, :tipo, :debilidad, :created_at, :updated_at
json.url pokemon_url(pokemon, format: :json)
