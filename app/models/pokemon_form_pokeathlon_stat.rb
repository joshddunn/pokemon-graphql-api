class PokemonFormPokeathlonStat < ApplicationRecord
  belongs_to :pokemon_form, foreign_key: :pokemon_form_id
  belongs_to :pokeathlon_stat, foreign_key: :pokeathlon_stat_id
end
