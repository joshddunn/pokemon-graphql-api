require 'test_helper'

class Resolvers::PokemonSpecySearchTest < ActiveSupport::TestCase
  def find(args)
    Resolvers::PokemonSpecySearch.call(nil, args, nil)
  end

  test 'pokemon_specy_search: identifier OR' do
    result = find(
      filter: {
        "identifier" => ["mew"],
        "OR" => [{
          "identifier" => ["bulbasaur"]
        }]
      }
    )

    assert_equal result.map(&:identifier).sort, ["bulbasaur", "mew"]
  end

  test 'pokemon_specy_search: identifier' do
    result = find(
      filter: {
        "identifier" => ["mew"],
      }
    )

    assert_equal result.map(&:identifier).sort, ["mew"]
  end

  test 'pokemon_specy_search: id' do
    result = find(
      filter: {
        "id" => 1,
      }
    )

    assert_equal result.map(&:identifier).sort, ["bulbasaur"]
  end
end
