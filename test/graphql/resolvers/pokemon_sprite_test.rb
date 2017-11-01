require 'test_helper'

class Resolvers::PokemonSpriteTest < ActiveSupport::TestCase
  def perform(obj, args = {})
    Resolvers::PokemonSprite.new.call(obj, args, nil)
  end

  test 'pokemon sprite link is properly formed' do
    link = perform(Pokemon.all.where(identifier: "bulbasaur").first)

    assert_not link.nil?
    assert link.include? "sprites/pokemon/1.png"
  end

  test 'pokemon sprite link works for alolan pokemon (uses species_id instead of id)' do
    link = perform(Pokemon.all.where(identifier: "bulbasaur-alola").first)

    assert_not link.nil?
    assert link.include? "sprites/pokemon/22-alola.png"
  end
end
