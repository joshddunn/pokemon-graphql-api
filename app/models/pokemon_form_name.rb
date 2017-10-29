class PokemonFormName < ApplicationRecord
  belongs_to :pokemon_form, foreign_key: :pokemon_form_id
  belongs_to :language, foreign_key: :local_language_id
end
