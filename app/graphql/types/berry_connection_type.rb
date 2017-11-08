Types::BerryConnectionType = Types::BerryType.define_connection do
  name "BerryConection"
  description ""

  field :totalCount do
    type types.Int
    resolve ->(obj, args, ctx) { obj.nodes.count }
  end
end
