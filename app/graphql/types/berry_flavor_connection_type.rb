Types::BerryFlavorConnectionType = Types::BerryFlavorType.define_connection do
  name 'BerryFlavorConnection'
  description ''

  field :totalCount do
    type types.Int
    resolve ->(obj, args, ctx) {
      obj.nodes.count
    }
  end
end
