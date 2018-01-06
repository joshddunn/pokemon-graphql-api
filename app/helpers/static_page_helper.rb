module StaticPageHelper
  def random_from_date
    number = Random.new(Time.now.strftime("%Y%m%d").to_i).rand(802) + 1
    uri = URI("http://pokeql.com/v1?query={PokemonSpecies(filter:{id:#{number}}){edges{node{pokemons{identifier,sprites{silhouette{male{front}}normal{male{front}}}}}}}}")
    data = Net::HTTP.get_response(uri)

    JSON.parse(data.body)["data"]["PokemonSpecies"]["edges"].first["node"]["pokemons"].first
  end
end
