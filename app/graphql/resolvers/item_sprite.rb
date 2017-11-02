class Resolvers::ItemSprite < GraphQL::Function
  type types.String

  def call(_obj, args, ctx)
    Rails.application.config.url + "/sprites/items/#{_obj.identifier}.png"
  end
end
