require 'test_helper'

class Resolvers::PokemonSearchTest < ActiveSupport::TestCase
  def find(args)
    Resolvers::PokemonSearch.call(nil, args, nil)
  end

  test 'pokemon_search: identifierContains' do
    result = find(
      filter: {
        "identifierContains" => ["mew"]
      }
    )

    assert_equal result.map(&:identifier).sort, ["mew", "mewtwo"]
  end

  test 'pokemon_search: identifierContains (making sure `and` works properly)' do
    result = find(
      filter: {
        "identifierContains" => ["mew", "two"]
      }
    )

    assert_equal result.map(&:identifier).sort, ["mewtwo"]
  end

  test 'pokemon_search: identifierNotContains' do
    result = find(
      filter: {
        "identifierContains" => ["mew"],
        "identifierNotContains" => ["two"],
      }
    )

    assert_equal result.map(&:identifier).sort, ["mew"]
  end

  test 'pokemon_search: height' do
    result = find(
      filter: {
        "identifierContains" => ["mew"],
        "height" => 4
      }
    )

    assert_equal result.map(&:identifier).sort, ["mew"]
  end

  test 'pokemon_search: heightGreaterThan' do
    result = find(
      filter: {
        "identifierContains" => ["mew"],
        "heightGreaterThan" => 4
      }
    )

    assert_equal result.map(&:identifier).sort, ["mewtwo"]
  end

  test 'pokemon_search: heightLessThan' do
    result = find(
      filter: {
        "identifierContains" => ["mew"],
        "heightLessThan" => 20 
      }
    )

    assert_equal result.map(&:identifier).sort, ["mew"]
  end

  test 'pokemon_search: weight' do
    result = find(
      filter: {
        "identifierContains" => ["mew"],
        "weight" => 1220
      }
    )

    assert_equal result.map(&:identifier).sort, ["mewtwo"]
  end

  test 'pokemon_search: weightGreaterThan' do
    result = find(
      filter: {
        "identifierContains" => ["mew"],
        "weightGreaterThan" => 40
      }
    )

    assert_equal result.map(&:identifier).sort, ["mewtwo"]
  end

  test 'pokemon_search: weightLessThan' do
    result = find(
      filter: {
        "identifierContains" => ["mew"],
        "weightLessThan" => 1220 
      }
    )

    assert_equal result.map(&:identifier).sort, ["mew"]
  end

  test 'pokemon_search: OR' do
    result = find(
      filter: {
        "identifierContains" => ["mew"],
        "OR" => [{
          "identifierContains" => ["bulbasaur"]
        }]
      }
    )

    assert_equal result.map(&:identifier).sort, ["bulbasaur", "mew", "mewtwo"]
  end

  test 'pokemon_search: order (identifier)' do
    result = find(
      filter: {
        "identifierContains" => ["mew"]
      },
      order: ["identifier"]
    )

    assert_equal result.map(&:identifier), ["mew", "mewtwo"]
  end
  
  test 'pokemon_search: order (identifier desc)' do
    result = find(
      filter: {
        "identifierContains" => ["mew"]
      },
      order: ["identifier desc"]
    )

    assert_equal result.map(&:identifier), ["mewtwo", "mew"]
  end

  test 'pokemon_search: isDefault = true' do
    result = find(
      filter: {
        "isDefault" => true
      }
    )

    assert result.map(&:identifier).include? "mewtwo"
  end

  test 'pokemon_search: isDefault = false' do
    result = find(
      filter: {
        "isDefault" => false
      }
    )

    assert_not result.map(&:identifier).include? "mewtwo"
  end
end
