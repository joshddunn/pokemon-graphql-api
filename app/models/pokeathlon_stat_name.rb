class PokeathlonStatName < ApplicationRecord
  belongs_to :pokeathlon_stat, foreign_key: :pokeathlon_stat_id
  belongs_to :language, foreign_key: :local_language_id
end
