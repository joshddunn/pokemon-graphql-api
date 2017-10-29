class PokedexProse < ApplicationRecord
  belongs_to :pokedex, foreign_key: :pokedex_id
  belongs_to :language, foreign_key: :local_language_id
end
