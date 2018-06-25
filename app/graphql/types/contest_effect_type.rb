Types::ContestEffectType = GraphQL::ObjectType.define do
  name 'ContestEffect'
  description ''

  field :id, types.ID, '', property: :id
  field :appeal, types.Int, '', property: :appeal
  field :jam, types.Int, '', property: :jam

  field :contestEffectProses, types[Types::ContestEffectProseType], '',
        property: :contest_effect_proses
  field :moves, types[Types::MoveType], '', property: :moves
end
