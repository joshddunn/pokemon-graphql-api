Types::BerryConnectionType = Types::BerryType.define_connection do
  name 'BerryConnection'
  description ''

  field :totalCount do
    type types.Int
    resolve ->(obj, args, ctx) {
      obj.nodes.count
    }
  end
end
