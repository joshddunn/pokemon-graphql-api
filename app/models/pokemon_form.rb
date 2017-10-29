class PokemonForm < ApplicationRecord
  belongs_to :pokemon, foreign_key: :pokemon_id
  belongs_to :version_group, foreign_key: :introduced_in_version_group_id

  has_many :pokemon_form_generations, foreign_key: :pokemon_form_id
  has_many :pokemon_form_names, foreign_key: :pokemon_form_id
  has_many :pokemon_form_pokeathlon_stats, foreign_key: :pokemon_form_id
end
