require 'test_helper'

class Resolvers::PokemonShinySpriteTest < ActiveSupport::TestCase
  def perform(obj, args = {})
    Resolvers::PokemonShinySprite.new.call(obj, args, nil)
  end

  test 'pokemon shiny sprite link is properly formed' do
    link = perform(Pokemon.all.where(identifier: "bulbasaur").first)

    assert_not link.nil?
    assert_equal link, Rails.application.config.url + "/sprites/pokemon/shiny/1.png"
  end

  test 'pokemon shiny sprite link works for alolan pokemon (uses species_id instead of id)' do
    link = perform(Pokemon.all.where(identifier: "grimer-alola").first)

    assert_not link.nil?
    assert_equal link, Rails.application.config.url + "/sprites/pokemon/shiny/88-alola.png"
  end

  test 'pokemon sprite link works for form pokemon (uses species_id instead of id)' do
    link = perform(Pokemon.all.where(identifier: "rotom-fan").first)

    assert_not link.nil?
    assert_equal link, Rails.application.config.url + "/sprites/pokemon/shiny/479-fan.png"
  end
end
