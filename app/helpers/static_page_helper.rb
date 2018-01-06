module StaticPageHelper
  def random_from_date
    number = Random.rand(802) + 1
    uri = URI("http://pokeql.com/v1?query={PokemonSpecies(filter:{id:#{number}}){edges{node{pokemons{identifier,sprites{silhouette{male{front}}normal{male{front}}}}}}}}")
    data = Net::HTTP.get_response(uri)

    JSON.parse(data.body).with_indifferent_access[:data][:PokemonSpecies][:edges].first[:node][:pokemons].first
  end
end
