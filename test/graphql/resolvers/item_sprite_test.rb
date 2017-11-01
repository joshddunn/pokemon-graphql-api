require 'test_helper'

class Resolvers::ItemSpriteTest < ActiveSupport::TestCase
  def perform(obj, args = {})
    Resolvers::ItemSprite.new.call(obj, args, nil)
  end

  test 'pokemon sprite link is properly formed' do
    link = perform(Item.all.where(identifier: "master-ball").first)

    assert_not link.nil?
    assert link.include? "sprites/items/master-ball.png"
  end
end
